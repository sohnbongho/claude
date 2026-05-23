# Workspace Index

> 업데이트: 2026-05-23
> 파일 수: 8개 (anal 3 / myplan 5 / myreview 0)
>
> **검색 방법**: 이 파일에서 키워드로 관련 항목을 찾은 뒤, 해당 경로의 파일만 Read 합니다.

---

## anal (코드 분석)

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| 20260421 | csharp_likeactor | [code-weakness-todo](anal/csharp_likeactor/20260421-code-weakness-todo.md) | 서버 코드 약점 분석 및 수정 TODO (CRITICAL/HIGH/MEDIUM 항목 전수) | 보안, OOM, 레이스컨디션, 소켓, 버퍼, DoS, 타임아웃 |
| 20260428 | csharp_likeactor | [10k-concurrent-capacity](anal/csharp_likeactor/20260428-10k-concurrent-capacity.md) | 동접 1만 수용 가능성 분석 — 세션 풀·IOCP 구조는 적합하나 레이트리미터·파서 할당 패턴이 병목 가능 | 동시접속, 세션풀, IOCP, SAEA, 성능, 10k |
| 20260428 | csharp_likeactor | [WorldThread-LobbyThread](anal/csharp_likeactor/20260428-WorldThread-LobbyThread.md) | LobbyThreadManager(단일 전용 스레드)와 WorldThreadManager(N개 스레드 풀) 구조 및 유저 귀속 흐름 분석 | 스레드, 액터, LobbyThread, WorldThread, TickThreadWorker, 스케줄링 |

---

## myplan (구현 계획)

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| 20260428 | csharp_likeactor | [LobbyThreadManager-N-workers](myplan/csharp_likeactor/20260428-LobbyThreadManager-N-workers.md) | LobbyThreadManager를 단일 워커에서 N개 워커 배열로 확장해 로비 병목 해소 | LobbyThreadManager, 워커, 스레드확장, 병목 |
| 20260428 | csharp_likeactor | [channel-backpressure](myplan/csharp_likeactor/20260428-channel-backpressure.md) | 메시지 채널을 Unbounded→Bounded로 교체해 OOM 위험 제거 및 폭주 세션 강제 종료 | 채널, 백프레셔, Bounded, OOM, 흐름제어 |
| 20260428 | csharp_likeactor | [ratelimiter-ip-policy](myplan/csharp_likeactor/20260428-ratelimiter-ip-policy.md) | CGNAT 대응·신뢰IP 우회·반복위반 밴·IPv6 정규화 등 레이트리미터 IP 정책 개선 | 레이트리미터, IP, CGNAT, IPv6, DoS, 밴 |
| 20260430 | csharp_likeactor | [db-io-처리-설계](myplan/csharp_likeactor/20260430-db-io-처리-설계.md) | SqlWorker + CacheWorker + RedisBroadcast Actor 패턴으로 DB/IO가 tick 스레드를 블로킹하지 않게 설계 | DB, MySQL, Redis, Actor, SqlWorker, 캐시, Pub/Sub |
| 20260501 | csharp_likeactor | [mysql-login-system](myplan/csharp_likeactor/20260501-mysql-login-system.md) | userId/password MySQL 검증 기반 로그인 흐름 구현 — PBKDF2-SHA256 인증, 기존 Actor 모델 통합 | 로그인, MySQL, 인증, PBKDF2, Actor, SqlWorker |

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
