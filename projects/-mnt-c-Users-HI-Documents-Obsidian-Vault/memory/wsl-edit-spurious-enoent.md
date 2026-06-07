---
name: wsl-edit-spurious-enoent
description: "이 볼트(/mnt/c WSL DrvFs)에서 Edit/Write가 ENOENT를 반환해도 쓰기는 실제 적용됨 — 재시도 금지, Read로 확인"
metadata: 
  node_type: memory
  type: project
  originSessionId: c82091df-570c-459f-bf34-7cd002cdc7ed
---

이 볼트는 WSL의 `/mnt/c/...`(Windows DrvFs) 위에 있다. 루트 레벨 파일(index.md, log.md 등)을 Edit/Write 할 때 도구가 `ENOENT: no such file or directory, statx ...` 오류를 반환하는 경우가 있는데, **이는 쓰기 후 stat 단계의 산발적 오류이며 실제 파일 쓰기는 정상 적용된다.** (wiki/ 하위 파일에서는 거의 발생 안 함, 루트 파일에서 자주 발생, 같은 파일에서도 발생/미발생이 섞임.)

**Why:** DrvFs의 stat 일관성 지연으로 추정. 도구가 실패로 보고하지만 디스크에는 반영됨.

**How to apply:** ENOENT를 보더라도 같은 Edit를 **재시도하지 말 것**(중복 적용/중복 텍스트 위험). 대신 Read나 grep으로 실제 반영 여부를 확인하고 넘어간다. 2026-06-08 카프카 인제스트 때 index.md·log.md에서 반복 관찰됨.
