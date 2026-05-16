# Claude Code 개인 설정

개인 Claude Code 전역 설정 및 에이전트 저장소입니다.

## 에이전트 목록

| 호출명 | 역할 | 모델 |
|--------|------|------|
| `@myor` | 모든 에이전트를 총괄하는 오케스트레이터 | Opus 4.7 |
| `@myplan` | 요구사항 분석 및 작업계획 문서 작성 | Sonnet 4.6 |
| `@mydo` | 계획 기반 실제 코드 구현 | Sonnet 4.6 |
| `@myreview` | 코드 리뷰 및 품질/보안 검증 | Opus 4.7 |
| `@mysetup` | Claude Code 설정 관리 | Sonnet 4.6 |

## 사용법

```
@myor    새 기능 처음부터 끝까지 만들어줘
@myplan  로그인 기능 구현 계획 세워줘
@mydo    위 계획대로 구현해줘
@myreview 방금 작성한 코드 리뷰해줘
@mysetup 세션 시작 시 날씨 알림 훅 추가해줘
```

## 전형적인 워크플로우

```
@myor → @myplan → @mydo → @myreview
```

1. `@myor` 에게 고수준 요청
2. `@myplan` 이 작업계획 문서 작성
3. `@mydo` 가 계획에 따라 코드 구현
4. `@myreview` 가 결과물 검토

## 설정 파일

| 파일 | 용도 |
|------|------|
| `settings.json` | 전역 설정 (모델, 테마, 훅 등) |
| `settings.local.json` | 로컬 권한 설정 |
| `agents/` | 커스텀 에이전트 정의 |
| `memory/` | 대화 간 기억 저장소 |

## 자동 백업

세션 종료 시 변경사항이 자동으로 이 저장소에 commit/push됩니다.
(`settings.json`의 `Stop` 훅으로 동작)
