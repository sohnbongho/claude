# Workspace Index

> 업데이트: 2026-05-23
> 파일 수: 8개 (anal 3 / myplan 5 / myreview 0)
>
> **검색 방법**: 이 파일에서 키워드로 관련 항목을 찾은 뒤, 해당 경로의 파일만 Read 합니다.

---

## anal (코드 분석)

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| 20260421 | csharp_likeactor | [code-weakness-todo](anal/csharp_likeactor/20260421-code-weakness-todo.md) | 서버 코드 약점 분석 및 수정 TODO — CRITICAL(OOM·소켓 미해제·오버플로우·DoS·예외무시), HIGH(레이스컨디션·타이머·버퍼 재사용), MEDIUM 항목 전수 정리 | 보안, OOM, 레이스컨디션, 소켓, 버퍼, DoS, 타임아웃, 메모리누수 |
| 20260428 | csharp_likeactor | [10k-concurrent-capacity](anal/csharp_likeactor/20260428-10k-concurrent-capacity.md) | 동접 1만 수용 가능성 분석 — 세션 풀 크기·IOCP 모델은 적합하나 레이트리미터·수신 파서의 할당 패턴이 고부하 시 병목 가능, 조건부 가능 판정 | 동시접속, 세션풀, IOCP, SAEA, 성능, 10k, 레이트리미터, 할당패턴 |
| 20260428 | csharp_likeactor | [WorldThread-LobbyThread](anal/csharp_likeactor/20260428-WorldThread-LobbyThread.md) | LobbyThreadManager(단일 전용 스레드)와 WorldThreadManager(N개 스레드 풀) 구조 및 유저 귀속 흐름 분석 — 두 매니저 모두 TickThreadWorker 사용, WorldId 기반 귀속 | 스레드, 액터, LobbyThread, WorldThread, TickThreadWorker, 스케줄링, 유저귀속 |

---

## myplan (구현 계획)

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| 20260428 | csharp_likeactor | [LobbyThreadManager-N-workers](myplan/csharp_likeactor/20260428-LobbyThreadManager-N-workers.md) | LobbyThreadManager를 단일 TickThreadWorker에서 N개 워커 배열로 확장해 로비 병목 해소 — 호출자 코드 변경 없이 라운드로빈 분배 설계 | LobbyThreadManager, 워커, 스레드확장, 병목, TickThreadWorker, 라운드로빈 |
| 20260428 | csharp_likeactor | [channel-backpressure](myplan/csharp_likeactor/20260428-channel-backpressure.md) | 메시지 채널을 Unbounded→Bounded로 교체해 OOM 위험 제거 — 채널 만석 시 해당 세션 강제 종료, envelope 풀 반환으로 메모리 누수 방지 | 채널, 백프레셔, Bounded, OOM, 흐름제어, UserSession, 강제종료 |
| 20260428 | csharp_likeactor | [ratelimiter-ip-policy](myplan/csharp_likeactor/20260428-ratelimiter-ip-policy.md) | 레이트리미터 IP 정책 개선 — CGNAT 임계값 조정, 신뢰IP 우회, 반복위반 한시적 밴, IPv4-mapped IPv6 정규화로 이중 카운팅 방지 | 레이트리미터, IP, CGNAT, IPv6, DoS, 밴, 신뢰IP, 정규화 |
| 20260430 | csharp_likeactor | [db-io-처리-설계](myplan/csharp_likeactor/20260430-db-io-처리-설계.md) | SqlWorker + CacheWorker + RedisBroadcast Actor 패턴으로 DB/IO가 tick 스레드를 블로킹하지 않게 설계 — 중요 요청은 재시도, 일반 요청은 Drop+에러응답 | DB, MySQL, Redis, Actor, SqlWorker, CacheWorker, 캐시, PubSub, Dapper |
| 20260501 | csharp_likeactor | [mysql-login-system](myplan/csharp_likeactor/20260501-mysql-login-system.md) | userId/password MySQL 검증 기반 로그인 흐름 구현 — PBKDF2-SHA256 비밀번호 검증, 기존 SqlWorker 채널·InnerMessage 패턴에 통합 | 로그인, MySQL, 인증, PBKDF2, Actor, SqlWorker, LoginRequest, LoginResponse |

---

## myreview (코드 리뷰)

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| — | — | (없음) | — | — |

---

## 프로젝트별 색인

| 프로젝트 | anal | myplan | myreview |
|---------|------|--------|----------|
| csharp_likeactor | 3개 | 5개 | 0개 |
