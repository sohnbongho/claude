# Claude Code 개인 설정

개인 Claude Code 전역 설정 및 에이전트 저장소입니다.

## 에이전트 목록

| 호출명 | 역할 | 모델 |
|--------|------|------|
| `@myor` | 모든 에이전트를 총괄하는 오케스트레이터 | Sonnet (최신) |
| `@myplan` | 요구사항 분석 및 작업계획 문서 작성 | Sonnet (최신) |
| `@mydo` | 계획 기반 실제 코드 구현 | Sonnet (최신) |
| `@myreview` | 코드 리뷰 및 품질/보안 검증 | Sonnet (최신) |
| `@mysetup` | Claude Code 설정 관리 | Sonnet (최신) |
| `@anal` | 코드 분석 전문 (수정 없음, 읽기·분석만) | Sonnet (최신) |
| `@myindex` | workspace 인덱스 생성·갱신 (마스터 `~/.claude/index/INDEX.md` + 서브 `~/.claude/index/{스킬}/{주제}/index.md`) | Sonnet (최신) |
| `@unity` | Unity 전담 (분석/계획/구현/리뷰 멀티모드) | Sonnet (최신) |

> `/advisor` 도구만 Opus (최신) 사용. 버전은 고정하지 않아 항상 최신 모델로 동작.

## 슬래시 커맨드 (글로벌)

어느 프로젝트에서든 `/` 로 호출할 수 있는 글로벌 커맨드.  
내부적으로 대응하는 `@에이전트`에게 위임하는 트리거 방식으로 동작합니다.

| 커맨드 | 역할 |
|--------|------|
| `/myplan` | 계획 수립 → `@myplan` 위임 |
| `/mydo` | 코드 구현 → `@mydo` 위임 |
| `/myreview` | 코드 리뷰 → `@myreview` 위임 |
| `/mysetup` | 설정 변경 → `@mysetup` 위임 |
| `/anal` | 코드 분석 → `@anal` 위임 |
| `/myindex` | workspace 인덱스 생성·갱신 → `@myindex` 위임 |

## 사용법

```
@myor    새 기능 처음부터 끝까지 만들어줘
@myplan  로그인 기능 구현 계획 세워줘
@mydo    위 계획대로 구현해줘
@myreview 방금 작성한 코드 리뷰해줘
@mysetup 세션 시작 시 날씨 알림 훅 추가해줘
@anal    이 클래스 구조 분석해줘
@unity   Unity 프로젝트 현황 파악해줘

/myplan  로그인 기능 구현 계획 세워줘
/mydo    위 계획대로 구현해줘
/myreview 방금 작성한 코드 리뷰해줘
/anal    이 클래스 구조 분석해줘
/mysetup Stop 훅 추가해줘
```

## 전형적인 워크플로우

```
@myor → @myplan → @mydo → @myreview
```

1. `@myor` 에게 고수준 요청
2. `@myplan` 이 작업계획 문서 작성
3. `@mydo` 가 계획에 따라 코드 구현
4. `@myreview` 가 결과물 검토

## 결과물 저장 (workspace)

`myreview`, `anal`, `myplan` 스킬 실행 결과는 **두 곳에 동시 저장**됩니다.

### ① 프로젝트 로컬 (원본)
```
{프로젝트루트}/.claude/{스킬명}/YYYYMMDD_<대상요약>.md
```

### ② 글로벌 workspace (아카이브)
```
~/.claude/workspace/{스킬명}/{프로젝트명}/YYYYMMDD-<대상요약>.md
```

| 스킬 | 로컬 원본 예시 | 글로벌 아카이브 예시 |
|------|--------------|---------------------|
| `myreview` | `.claude/myreview/20260523_login-security.md` | `~/.claude/workspace/myreview/myapp/20260523-login-security.md` |
| `anal` | `.claude/anal/20260523_session-flow.md` | `~/.claude/workspace/anal/myapp/20260523-session-flow.md` |
| `myplan` | `.claude/myplan/20260523_oauth2.md` | `~/.claude/workspace/myplan/myapp/20260523-oauth2.md` |

- `{프로젝트명}`: 현재 git 저장소 이름 또는 작업 디렉토리명
- 두 파일의 내용은 동일, 폴더가 없으면 자동 생성

## 설정 파일

| 파일 | 용도 |
|------|------|
| `settings.json` | 전역 설정 (모델, 테마, 훅 등) |
| `settings.local.json` | 로컬 권한 설정 |
| `agents/` | 커스텀 에이전트 정의 (`@` 호출) |
| `commands/` | 글로벌 슬래시 커맨드 정의 (`/` 호출) |
| `memory/` | 대화 간 기억 저장소 |
| `workspace/` | 스킬 실행 결과물 저장소 |

## 자동 백업

세션 종료 시 변경사항이 자동으로 이 저장소에 commit/push됩니다.
(`settings.json`의 `Stop` 훅으로 동작)
