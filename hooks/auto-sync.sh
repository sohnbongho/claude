#!/usr/bin/env bash
# ~/.claude 자동 백업 (Stop 훅에서 호출)
#
# 원칙:
#   1. 어떤 경우에도 exit 0 — 세션 종료를 막지 않는다.
#   2. push 실패를 절대 삼키지 않는다. 로그 + 실패 마커 + systemMessage 3중으로 알린다.
#   3. 분기(diverge)를 자동 해결하지 않는다. 감지해서 보고만 한다.
#      (설정 파일 충돌은 사람이 양쪽을 보고 판단해야 하므로 무인 rebase/merge는 위험)
#
# 직접 테스트: bash ~/.claude/hooks/auto-sync.sh
# 테스트용 저장소 지정: CLAUDE_SYNC_REPO=/tmp/xxx bash ~/.claude/hooks/auto-sync.sh

set -u

REPO="${CLAUDE_SYNC_REPO:-$HOME/.claude}"
LOG="$REPO/sync-status.log"
FAIL_MARK="$REPO/.sync-failed"
BRANCH="main"

cd "$REPO" 2>/dev/null || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0

log() { printf '%s  %s\n' "$(date +%Y-%m-%dT%H:%M:%S)" "$*" >> "$LOG" 2>/dev/null; }

# main 브랜치가 아니면 아무것도 하지 않는다 (backup 브랜치 등에서의 오작동 방지)
current=$(git symbolic-ref --short -q HEAD) || exit 0
if [ "$current" != "$BRANCH" ]; then
    log "SKIP  브랜치가 $current (main 아님)"
    exit 0
fi

# 1) 변경사항이 있으면 커밋
if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
    git add -A 2>/dev/null
    if ! git diff --cached --quiet; then
        if ! git commit -q -m "Auto-sync: $(date +%Y-%m-%dT%H:%M:%S)" 2>/dev/null; then
            log "FAIL  commit 실패"
            printf '{"systemMessage": "~/.claude 자동 백업: commit 실패. cat ~/.claude/sync-status.log 확인"}\n'
            exit 0
        fi
    fi
fi

# 2) 푸시할 커밋이 있는지 확인 (이전 세션의 실패분도 여기서 재시도된다)
ahead=$(git rev-list --count "origin/$BRANCH..HEAD" 2>/dev/null || echo 0)
if [ "$ahead" = "0" ]; then
    rm -f "$FAIL_MARK"
    exit 0
fi

# 3) push
if out=$(git push origin "$BRANCH" 2>&1); then
    log "OK    push $ahead커밋"
    rm -f "$FAIL_MARK"
    exit 0
fi

# 4) 실패 — 원인을 남긴다
reason=$(printf '%s' "$out" | tr -d '"\\' | tr '\n' ' ' | cut -c1-400)
git fetch origin "$BRANCH" --quiet 2>/dev/null
behind=$(git rev-list --count "HEAD..origin/$BRANCH" 2>/dev/null || echo 0)

log "FAIL  push 실패 (미푸시 $ahead / 원격전용 $behind) :: $reason"
{
    echo "~/.claude 자동 백업 push 실패"
    echo "시각      : $(date +%Y-%m-%dT%H:%M:%S)"
    echo "미푸시    : $ahead 커밋"
    echo "원격 전용 : $behind 커밋"
    if [ "$behind" != "0" ]; then
        echo
        echo "로컬과 원격이 분기되었습니다. 자동 해결하지 않았습니다."
        echo "확인: git -C ~/.claude log --oneline HEAD..origin/$BRANCH"
    fi
    echo
    echo "git 출력:"
    printf '%s\n' "$out"
} > "$FAIL_MARK" 2>/dev/null

printf '{"systemMessage": "~/.claude 자동 백업 push 실패 - 미푸시 %s커밋. 상세: cat ~/.claude/.sync-failed"}\n' "$ahead"
exit 0
