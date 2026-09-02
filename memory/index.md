# Memory Index

> Read this file at the start of every session to restore context.

---

## 2026-09-02

### Memory System Created

- **What**: Set up persistent agent memory with daily journal files and a master index.
- **Why**: User wanted a git-backed memory system inspired by local LLM community patterns — everything done gets recorded.
- **How**: `memory/index.md` (read on startup), `memory/YYYY-MM-DD.md` (daily append), `memory/commit.sh` (commit helper).
- **Convention**: Agent appends timestamped entries after meaningful work, then commits. Index is updated each session.
