# Engineering Rules

Use these rules when adding or materially changing application logic.

## Match the codebase

Before designing a solution:
1. Find a similar feature.
2. Trace its request/data flow.
3. Identify existing boundaries and conventions.
4. Reuse them unless the requirement proves they are insufficient.

Local consistency usually has more value than introducing a theoretically cleaner pattern in one feature.

## Smallest complete change

Implement all required behavior, but no speculative behavior.

Avoid:
- premature generic frameworks,
- interfaces with one implementation and no boundary/testing reason,
- factories that only call constructors,
- pass-through services and wrappers,
- helpers used once when inline code is clearer,
- new dependencies for functionality already available,
- configuration knobs with no current requirement,
- refactoring unrelated modules while implementing a feature.

Do not confuse fewer lines with simpler design. Keep boundaries that protect correctness, security, transactions, domain invariants, or maintainability.

## Backend/API

When relevant:
- validate at the appropriate trust boundary,
- preserve authorization and tenant boundaries,
- make failure semantics explicit,
- use transactions for atomic state changes,
- consider idempotency for retried side effects,
- avoid exposing persistence details accidentally,
- follow existing error/response conventions,
- do not add endpoints or fields that are not needed.

## Frontend

- Reuse the project's data-fetching and state patterns.
- Keep state as local as practical.
- Do not duplicate server truth into unnecessary client state.
- Avoid effects for logic that can be derived during render or handled by an event.
- Reuse existing form, validation, error, notification, and modal patterns.
- Do not create a component merely to move a few lines into another file; extract when it improves reuse, ownership, readability, or testing.

## Data and migrations

- Treat schema changes as production changes.
- Follow the repository's migration system.
- Preserve backwards compatibility when rollout order requires it.
- Do not hand-edit generated artifacts unless the repository expects it.
- Consider constraints and indexes based on real access/integrity requirements, not habit.

## Comments and documentation

Comments should explain why, invariants, external constraints, or surprising behavior.

Delete comments that merely translate the next line of code into English.

## Code simplification pass

For each new abstraction ask:
1. What concrete problem does this solve today?
2. Does an existing abstraction already solve it?
3. Does this make the call path easier or harder to understand?
4. What breaks if this layer is removed?

Remove layers whose only justification is hypothetical future reuse.
