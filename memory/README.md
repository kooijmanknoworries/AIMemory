# Agent Memory

Persistent memory for the OpenHands agent. Every session, the agent reads and writes here.

## Structure

- **`index.md`** — Master index. Read on startup. Summarizes all entries chronologically.
- **`YYYY-MM-DD.md`** — Daily journal files. Agent appends timestamped entries throughout the day.

## Conventions

### Daily Files (`YYYY-MM-DD.md`)

Each entry follows this format:

```markdown
### HH:MM — Short Title

- **Task**: What was done
- **Context**: Why it mattered / user intent
- **Outcome**: Result, decisions, or artifacts produced
- **Follow-up**: Anything pending or to remember
```

### Index File (`index.md`)

Updated at the end of each session. Contains a condensed timeline of everything that happened, organized by date. This is what gets loaded at the start of every new session.

### Committing

After every meaningful entry, the agent runs:

```bash
cd /workspace/project && ./memory/commit.sh "memory: YYYY-MM-DD session entry"
```

The helper script stages, commits, and keeps history clean.
