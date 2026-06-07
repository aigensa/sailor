# Sailor Project Board

## Navigation
```
cat board/backlog.md            # prioritized backlog
cat board/active.md             # in-progress
cat board/done.md               # completed
cat board/stories/SAIL-NNN.md   # story detail
ls board/processes/             # process index
```

## GitHub Project
Owner: aigensa | Project: #5 | https://github.com/orgs/aigensa/projects/5

## Conventions
- Story IDs: SAIL-NNN (3-digit, sequential, never reuse)
- **Next ID: SAIL-003**
- Lanes: backlog → active → done
- Priority: p0=blocker p1=high p2=medium p3=low
- Types: feature bug chore spike process
- Lane entry format: `[p1] SAIL-001 — <title> (type) #<gh_issue>`
