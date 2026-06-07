# SAIL-002: Boat Check-in Feature
status: backlog
priority: p1
type: feature
created: 2026-06-06
updated: 2026-06-06
assignee: unassigned
gh_issue: 2

## Goal
Sailor can start a check-in, complete a predefined checklist, save the result, and view check-in history.

## Context
Core feature described in project charter. Predefined checklist items (no user customization in MVP). Data persisted locally on Android device. Depends on SAIL-001 (project setup) being complete.

## Tasks
- [ ] Define data model: `ChecklistTemplate[]` (predefined items), `CheckInRecord` (timestamp + item results)
- [ ] Build check-in screen: display items, tap to check/uncheck
- [ ] Build start → complete check-in flow (confirm/submit)
- [ ] Persist `CheckInRecord` locally (SQLite)
- [ ] Build check-in history screen (list of past records with timestamps)
- [ ] Wire navigation: Home → Start Check-in → History

## Log
- 2026-06-06: created
