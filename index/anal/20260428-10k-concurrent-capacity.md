---
source: ~/.claude/workspace/anal/csharp_likeactor/20260428-10k-concurrent-capacity.md
date: 2026-04-28
project: csharp_likeactor
keywords: [동시접속, 세션풀, IOCP, SAEA, 성능, 10k, 레이트리미터, 할당패턴]
---

동접 1만 수용 가능성 분석 — 세션 풀 크기·IOCP 모델은 적합하나 레이트리미터·수신 파서의 할당 패턴이 고부하 시 병목 가능, 조건부 가능 판정.
