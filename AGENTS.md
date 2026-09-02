# Agent Instructions — Memory Workflow

## On Every Session Start

1. **Read** `memory/index.md` to restore context from previous sessions.
2. **Check** if today's daily file exists (`memory/YYYY-MM-DD.md`). If not, create it with a `# YYYY-MM-DD` header and `---` divider.

## After Every Meaningful Interaction

1. **Append** a timestamped entry to today's daily file:

   ```markdown
   ### HH:MM — Short Title

   - **Task**: What was done
   - **Context**: Why it mattered
   - **Outcome**: Result or artifacts
   - **Follow-up**: Anything pending
   ```

2. **Update** `memory/index.md` — add or update the summary for today under the appropriate date heading.

3. **Commit** with the helper script:

   ```bash
   ./memory/commit.sh "memory: YYYY-MM-DD — brief description"
   ```

## Principles

- **Be concise but complete**. Capture enough to restore full context later.
- **Commit often**. After each meaningful entry, not just at session end.
- **Index is for scanning**. Daily files are for detail. Keep the index high-level.
- **Never delete entries**. History is memory. If something was wrong, add a correction below it.
