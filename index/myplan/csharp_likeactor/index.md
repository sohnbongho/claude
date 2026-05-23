# myplan × csharp_likeactor 인덱스

> 업데이트: 2026-05-23
> 파일 수: 5개

| 날짜 | 파일 | 요약 | 키워드 |
|------|------|------|--------|
| 20260428 | [20260428-LobbyThreadManager-N-workers](~/.claude/workspace/myplan/csharp_likeactor/20260428-LobbyThreadManager-N-workers.md) | LobbyThreadManager를 단일 TickThreadWorker에서 N개 워커 배열로 확장해 로비 병목을 해소하는 설계 | LobbyThreadManager, 워커확장, 병목, TickThreadWorker, 스레드풀 |
| 20260428 | [20260428-channel-backpressure](~/.claude/workspace/myplan/csharp_likeactor/20260428-channel-backpressure.md) | Unbounded 채널을 Bounded로 교체하고 가득 찰 경우 세션 강제 종료로 OOM 위험을 제거하는 배압 설계 | 채널, 배압, Bounded, OOM, 세션종료 |
| 20260428 | [20260428-ratelimiter-ip-policy](~/.claude/workspace/myplan/csharp_likeactor/20260428-ratelimiter-ip-policy.md) | CGNAT 환경 대응 임계값 조정, 신뢰 IP 우회, 반복 위반 IP 한시적 밴, IPv4-mapped IPv6 정규화 설계 | 레이트리미터, CGNAT, IP정책, 밴, IPv6 |
| 20260430 | [20260430-db-io-처리-설계](~/.claude/workspace/myplan/csharp_likeactor/20260430-db-io-처리-설계.md) | SqlWorker·CacheWorker·RedisBroadcast Actor 패턴으로 tick 스레드 블로킹 없이 DB/IO 처리하는 설계 | SqlWorker, Redis, Actor, 채널, Dapper |
| 20260501 | [20260501-mysql-login-system](~/.claude/workspace/myplan/csharp_likeactor/20260501-mysql-login-system.md) | MySQL 검증 기반 로그인 흐름을 SqlWorker 채널·InnerMessage 구조에 통합하고 PBKDF2-SHA256 비밀번호 검증 구현 | MySQL, 로그인, PBKDF2, SqlWorker, 인증 |
