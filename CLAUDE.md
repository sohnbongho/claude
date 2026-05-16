# Claude Code 전역 규칙

## 에이전트 설정 변경 시 필수 작업

`agents/` 디렉토리 내 파일을 추가·수정·삭제하거나, 에이전트의 이름·모델·역할이 바뀌면 반드시 아래 두 가지를 함께 처리한다.

1. **README.md 업데이트**: 변경된 내용을 `~/.claude/README.md`의 에이전트 목록 및 설명에 반영
2. **GitHub push**: 변경된 파일과 README.md를 commit하고 `git push origin main`

```bash
# 에이전트 변경 후 실행 순서
git -C ~/.claude add agents/ README.md
git -C ~/.claude commit -m "에이전트 변경 내용 요약"
git -C ~/.claude push origin main
```

이 규칙은 Stop 훅의 자동 push와 별개로, 에이전트 변경 시점에 즉시 수행한다.
