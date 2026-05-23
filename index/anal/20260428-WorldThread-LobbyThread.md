---
source: ~/.claude/workspace/anal/csharp_likeactor/20260428-WorldThread-LobbyThread.md
date: 2026-04-28
project: csharp_likeactor
keywords: [스레드, 액터, LobbyThread, WorldThread, TickThreadWorker, 스케줄링, 유저귀속]
---

LobbyThreadManager(단일 전용 스레드)와 WorldThreadManager(N개 스레드 풀) 구조 및 유저 귀속 흐름 분석 — 두 매니저 모두 TickThreadWorker 사용, WorldId 기반 귀속.
