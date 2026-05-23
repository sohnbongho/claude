---
source: ~/.claude/workspace/myplan/csharp_likeactor/20260428-channel-backpressure.md
date: 2026-04-28
project: csharp_likeactor
keywords: [채널, 백프레셔, Bounded, OOM, 흐름제어, UserSession, 강제종료]
---

메시지 채널을 Unbounded→Bounded로 교체해 OOM 위험 제거 — 채널 만석 시 해당 세션 강제 종료, envelope 풀 반환으로 메모리 누수 방지.
