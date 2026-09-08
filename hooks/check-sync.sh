#!/usr/bin/env bash
# 지난 세션의 자동 백업 실패를 세션 시작 시점에 알린다 (SessionStart 훅).
# Stop 훅의 systemMessage는 사용자가 자리를 뜬 뒤 표시될 수 있으므로,
# 다음 세션 시작에서 한 번 더 알리는 것이 실제로 눈에 띈다.
set -u
[ -f "$HOME/.claude/.sync-failed" ] && \
    printf '{"systemMessage": "지난 세션의 ~/.claude 자동 백업 push가 실패했습니다. 확인: cat ~/.claude/.sync-failed"}\n'
exit 0
