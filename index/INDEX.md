# Master Index

> 업데이트: 2026-05-23
> 총 파일 수: 8개

**검색 방법**: 이 파일에서 키워드로 관련 항목을 찾은 뒤, 해당 경로의 파일만 Read 합니다.

---

## anal / csharp_likeactor
> 서브 인덱스: `~/.claude/index/anal/csharp_likeactor/index.md`

| 날짜 | 파일 | 요약 | 키워드 |
|------|------|------|--------|
| 20260421 | [code-weakness-todo](~/.claude/workspace/anal/csharp_likeactor/20260421-code-weakness-todo.md) | 송신 큐 무제한 성장, SAEA 미해제, DoS 취약점 등 서버 크래시·메모리 고갈 위험 코드 약점 목록 및 수정 TODO | 약점, 크래시, 메모리누수, DoS, 큐 |
| 20260428 | [10k-concurrent-capacity](~/.claude/workspace/anal/csharp_likeactor/20260428-10k-concurrent-capacity.md) | 세션 풀 10,000 설계와 IOCP+SAEA 구조는 동접 1만을 조건부로 수용 가능하나 레이트 리미터·수신 파서가 고부하 병목 | 동접, 세션풀, IOCP, SAEA, 병목 |
| 20260428 | [WorldThread-LobbyThread](~/.claude/workspace/anal/csharp_likeactor/20260428-WorldThread-LobbyThread.md) | LobbyThreadManager(단일 전용 스레드)와 WorldThreadManager(N개 스레드 풀)의 역할 분리 및 메시지 흐름 분석 | 스레드, LobbyThread, WorldThread, TickThreadWorker, 액터 |

---

## myplan / csharp_likeactor
> 서브 인덱스: `~/.claude/index/myplan/csharp_likeactor/index.md`

| 날짜 | 파일 | 요약 | 키워드 |
|------|------|------|--------|
| 20260428 | [LobbyThreadManager-N-workers](~/.claude/workspace/myplan/csharp_likeactor/20260428-LobbyThreadManager-N-workers.md) | LobbyThreadManager를 단일 TickThreadWorker에서 N개 워커 배열로 확장해 로비 병목을 해소하는 설계 | LobbyThreadManager, 워커확장, 병목, TickThreadWorker, 스레드풀 |
| 20260428 | [channel-backpressure](~/.claude/workspace/myplan/csharp_likeactor/20260428-channel-backpressure.md) | Unbounded 채널을 Bounded로 교체하고 가득 찰 경우 세션 강제 종료로 OOM 위험을 제거하는 배압 설계 | 채널, 배압, Bounded, OOM, 세션종료 |
| 20260428 | [ratelimiter-ip-policy](~/.claude/workspace/myplan/csharp_likeactor/20260428-ratelimiter-ip-policy.md) | CGNAT 환경 대응 임계값 조정, 신뢰 IP 우회, 반복 위반 IP 한시적 밴, IPv4-mapped IPv6 정규화 설계 | 레이트리미터, CGNAT, IP정책, 밴, IPv6 |
| 20260430 | [db-io-처리-설계](~/.claude/workspace/myplan/csharp_likeactor/20260430-db-io-처리-설계.md) | SqlWorker·CacheWorker·RedisBroadcast Actor 패턴으로 tick 스레드 블로킹 없이 DB/IO 처리하는 설계 | SqlWorker, Redis, Actor, 채널, Dapper |
| 20260501 | [mysql-login-system](~/.claude/workspace/myplan/csharp_likeactor/20260501-mysql-login-system.md) | MySQL 검증 기반 로그인 흐름을 SqlWorker 채널·InnerMessage 구조에 통합하고 PBKDF2-SHA256 비밀번호 검증 구현 | MySQL, 로그인, PBKDF2, SqlWorker, 인증 |

---

## myreview / csharp_likeactor
> 서브 인덱스: `~/.claude/index/myreview/csharp_likeactor/index.md`

(없음)

---

## 프로젝트별 색인

| 프로젝트 | anal | myplan | myreview |
|---------|------|--------|----------|
| csharp_likeactor | 3개 | 5개 | 0개 |
