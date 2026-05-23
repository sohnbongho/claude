# myplan Index

> 업데이트: 2026-05-23
> 파일 수: 5개

| 날짜 | 프로젝트 | 파일 | 요약 | 키워드 |
|------|---------|------|------|--------|
| 20260428 | csharp_likeactor | [LobbyThreadManager-N-workers](20260428-LobbyThreadManager-N-workers.md) | LobbyThreadManager를 단일 워커에서 N개 워커 배열로 확장해 로비 병목 해소 | LobbyThreadManager, 워커, 스레드확장, 병목 |
| 20260428 | csharp_likeactor | [channel-backpressure](20260428-channel-backpressure.md) | 메시지 채널을 Unbounded→Bounded로 교체해 OOM 위험 제거 및 폭주 세션 강제 종료 | 채널, 백프레셔, Bounded, OOM, 흐름제어 |
| 20260428 | csharp_likeactor | [ratelimiter-ip-policy](20260428-ratelimiter-ip-policy.md) | CGNAT 대응·신뢰IP 우회·반복위반 밴·IPv6 정규화 등 레이트리미터 IP 정책 개선 | 레이트리미터, IP, CGNAT, IPv6, DoS, 밴 |
| 20260430 | csharp_likeactor | [db-io-처리-설계](20260430-db-io-처리-설계.md) | SqlWorker + CacheWorker + RedisBroadcast Actor 패턴으로 DB/IO가 tick 스레드를 블로킹하지 않게 설계 | DB, MySQL, Redis, Actor, SqlWorker, 캐시, Pub/Sub |
| 20260501 | csharp_likeactor | [mysql-login-system](20260501-mysql-login-system.md) | userId/password MySQL 검증 기반 로그인 흐름 — PBKDF2-SHA256 인증, 기존 Actor 모델 통합 | 로그인, MySQL, 인증, PBKDF2, Actor, SqlWorker |
