# Sprint 1 Planning Session

Date: 13 May 2026

Sprint Goal: Allow employees to book and cancel rooms successfully.

=====================================================================================

## Attendees

- Product Owner: Kavin
- Scrum Master: Bandile
- Development Team: Kavin, Bandile, Ozzie, Jane, Bayanda

=====================================================================================

## Velocity Target

19 Story Points
=====================================================================================

## Selected User Stories

| Story # | Title | Story Points |
|---------|-------|--------------|
| Story #1 | Basic Room Booking | 8 |
| Story #2 | Setting Up Recurring Meetings | 3 |
| Story #3 | Room Capacity Filtering | 3 |
| Story #4 | Booking Cancellation | 5 |

Total Story Points: 19

=====================================================================================

## Dependencies

- Setting up recurring meetings depends on successful implementation of the basic room booking functionality.
- Room capacity filtering depends on room booking database availability and room capacity fields.
- Booking cancellation depends on successful booking creation and booking record storage on the database.
- Notification logic depends on recurring scheduling functionality being completed first.
- Booking API endpoints must be completed before frontend booking integration testing can begin.

=====================================================================================

## Risks

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Database configuration delays | Medium | High | Successfully configure database early before development begins |
| User authentication failures | Low | High | Use role-based checking logic and session validation |
| User input validation errors | High | High | Implement consistent frontend and backend error handling |
| Budget constraints | High | Medium | Draft a clear budget breakdown strategy and prioritize essential tasks |
| Booking creation errors | Medium | High | Perform continuous testing during development and integration |

=====================================================================================

## Standup Cadence

Time:
10:15 AM Daily
Duration: 15 minutes

Format:
- Yesterday
- Today
- Blockers



=====================================================================================
