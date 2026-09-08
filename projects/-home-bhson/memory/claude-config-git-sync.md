---
name: claude-config-git-sync
description: ~/.claude is a git worktree synced to github.com/sohnbongho/claude via a Stop hook
metadata: 
  node_type: memory
  type: project
  originSessionId: 8a8529c0-2b67-4930-b1d8-3ea8cf77b4a0
  modified: 2026-07-24T15:47:27.500Z
---

`~/.claude` 전역 설정 디렉토리 자체가 git 워킹트리이며 원격 `git@github.com:sohnbongho/claude.git` (branch `main`)에 연결되어 있다.

- **동기화 방식**: `settings.json`의 Stop 훅이 세션 종료 시 `git add -A → commit "Auto-sync: <ts>" → git push origin main`을 실행한다. 코드가 아니라 훅으로 동작.
- **인증**: SSH. 키 `~/.ssh/id_ed25519` (2026-07-25 생성)가 GitHub 계정 `sohnbongho`(저장소 소유자)에 등록됨. 원격은 SSH URL 사용, github.com은 known_hosts 등록됨.
- **커밋 신원**: repo-local git config에 user.name=`bhson`, user.email=`hanmuson1@gmail.com`.
- **보존 파일**: `.credentials.json`, `sessions/`, `cache/`, `plugins/`, `projects/**/*.jsonl` 등 런타임 파일은 `.gitignore`로 추적 제외 → 절대 커밋되지 않음.
- **주의**: `~/.claude` 안의 추적 파일을 바꾸면 세션 종료 시 저장소에 자동 반영된다. CLAUDE.md 규칙상 agents/ 변경 시 README.md도 함께 갱신 후 즉시 push.
