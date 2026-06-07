# Process: Mobile Feature Development
slug: mobile-feature-dev
trigger: any new Android mobile feature story

## Purpose
Repeatable workflow for taking a mobile feature from idea to shipped, on Android.

## Steps

1. **Spike (if framework/pattern not established)**
   - Create a spike story (type: spike)
   - Delegate to `architect` skill for framework/library evaluation
   - Output: framework decision + initialization committed

2. **Feature Story Creation**
   - PM defines: data model, screens, navigation in story Tasks
   - Story must include: data model task, per-screen task, persistence task, navigation task

3. **Implementation**
   - Delegate to default claude agent with story ID + full task list
   - Agent implements each task, commits incrementally

4. **Smoke Test on Android**
   - Agent runs app on Android emulator
   - Walks through golden path (happy path of each screen)
   - Reports any failures back to PM

5. **PM Close**
   - Verify all Tasks checked in story file
   - Update board: active → done
   - Close GitHub issue
   - Set GitHub Project status to Done

## Exceptions
- If emulator unavailable: agent documents build success + screenshot evidence instead
- If framework spike reveals blocker: surface to user before proceeding to feature story
