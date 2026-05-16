Claude Code 설정 작업을 `mysetup` 서브에이전트에게 위임합니다.

다음 요청을 Task 도구를 사용해 `mysetup` 서브에이전트에게 전달하세요:

```
$ARGUMENTS
```

위임 시 아래 컨텍스트를 함께 전달합니다:
- 현재 작업 디렉터리
- 설정 대상: $ARGUMENTS
- 관련 설정 파일 경로: `~/.claude/settings.json`, `.claude/settings.json`, `.claude/settings.local.json`

`mysetup` 에이전트는 수정 전 반드시 현재 파일을 읽고, 기존 설정과 병합하는 방식으로 작업합니다. 변경 후 JSON 유효성을 검증하고 결과를 `workspace/mysetup/YYYYMMDD_<주제요약>.md` 에 저장합니다.
