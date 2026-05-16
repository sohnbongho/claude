계획 수립을 `myplan` 서브에이전트에게 위임합니다.

다음 요청을 Task 도구를 사용해 `myplan` 서브에이전트에게 전달하세요:

```
$ARGUMENTS
```

위임 시 아래 컨텍스트를 함께 전달합니다:
- 현재 작업 디렉터리와 프로젝트 구조
- CLAUDE.md의 관련 지침
- 사용자가 제공한 인자: $ARGUMENTS

`myplan` 에이전트는 코드를 작성하거나 수정하지 않고, `workspace/myplan/YYYYMMDD_<주제요약>.md` 형식으로 계획서를 작성한 뒤 사용자에게 출력합니다.
