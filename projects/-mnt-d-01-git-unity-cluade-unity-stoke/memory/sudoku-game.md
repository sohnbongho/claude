---
name: sudoku-game
description: 스도쿠 게임 실행 방법과 구조 — 런타임 부트스트랩이라 씬에 아무것도 없고 세로 화면 필요
metadata: 
  node_type: memory
  type: project
  originSessionId: d70ebc50-7b42-44de-a201-2965d4d83a38
  modified: 2026-08-01T09:23:01.505Z
---

`stoke/Assets/Scripts/Sudoku/` 에 코드로만 구성된 모바일 스도쿠 게임이 있다.

- **실행**: 에디터에서 Play 만 누르면 됨. `SudokuGame.Boot()` 가 `[RuntimeInitializeOnLoadMethod]` 로 자동 부팅해 Canvas/EventSystem/보드를 전부 코드로 생성한다. **씬 하이어라키에는 아무것도 없는 게 정상** (누락 아님).
- **세로 화면 필수**: 레이아웃이 1080×1920 기준 top-anchored 라, Game view 가 가로(1920×1080)면 숫자패드/액션바가 화면 아래로 밀려 안 보인다. 반드시 **portrait(1080×1920 등) 프리셋**으로 볼 것.
- 구성: `SudokuGenerator`(유일 해답 보장 생성) → `SudokuModel`(상태) → `SudokuGame`(컨트롤러+UI).
- 스마트 메모: 숫자 확정 시 같은 행/열/박스 20개 peer 의 연필 메모에서 그 숫자를 자동 제거. Undo 로 복원됨.
- 입력: 신/구 Input System 양쪽 대응(`#if ENABLE_INPUT_SYSTEM`). 클릭이 안 먹으면 `AssignDefaultActions()` 한 줄이 첫 의심 지점.
