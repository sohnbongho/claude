~/.claude/workspace 인덱스를 생성·갱신합니다.

Task 도구를 사용해 `myindex` 서브에이전트에게 아래 작업을 위임하세요:

```
~/.claude/workspace 내 모든 md 파일을 스캔하여 INDEX.md를 생성·갱신합니다.
$ARGUMENTS
```

에이전트는 각 파일의 앞 30줄만 읽어 경로, 날짜, 프로젝트, 요약, 키워드를 추출하고
`~/.claude/workspace/INDEX.md`에 토큰 효율적인 검색 인덱스를 작성합니다.

완료 후 인덱싱된 파일 수와 스킬별 통계를 출력합니다.
