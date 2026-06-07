# Sailor — Agent Context

Mobile app for sailors. Android-only. MVP scope.

## Purpose
- Routine task management (boat checking via checklists)
- Recommendations on boating companies

## Tech Stack
See `docs/adr/` for decisions. Current:
- Framework: TBD (ADR-001 pending)
- Language: TypeScript
- Storage: Local SQLite
- Platform: Android only

## Project Structure
```
app/                  mobile app source (created by SAIL-001)
board/                project board (backlog, active, done, stories)
docs/
  adr/                architecture decision records (YAML)
  contracts/          implementation contracts (YAML) + feature designs
  schemas/            JSON Schema definitions for artifact validation
scripts/
  validate            validates YAML artifact against its schema
  pi                  delegates contract to pi CLI for execution
.claude/
  agents/             pm, architect agent definitions
```

## Standards
- TypeScript strict mode
- No unnecessary dependencies — justify every new package
- SQLite for all local persistence
- Android emulator must pass smoke test before a story is closed

## Workflow
Before starting any contract:
1. Run `scripts/validate <contract>` — do not proceed if invalid
2. Check `depends_on:` — all listed contracts must be `status: done`
3. On completion: update `status: done` and populate `evidence:` in the contract file
