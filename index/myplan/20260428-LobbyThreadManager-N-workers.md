---
source: ~/.claude/workspace/myplan/csharp_likeactor/20260428-LobbyThreadManager-N-workers.md
date: 2026-04-28
project: csharp_likeactor
keywords: [LobbyThreadManager, 워커, 스레드확장, 병목, TickThreadWorker, 라운드로빈]
---

LobbyThreadManager를 단일 TickThreadWorker에서 N개 워커 배열로 확장해 로비 병목 해소 — 호출자 코드 변경 없이 동작하도록 라운드로빈 분배 설계.
