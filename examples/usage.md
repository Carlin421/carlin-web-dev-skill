# Usage Examples

## New feature

```text
Use carlin-web-dev.

Add a setting that lets merchants disable Google Calendar sync.
Inspect the existing integrations settings and backend patterns first.
Implement only what is required and run the relevant verification.
```

## Existing UI cleanup

```text
Use carlin-web-dev to review this screen.

Preserve functionality. Remove redundant copy, containers, headings,
badges, and decorative UI that do not improve usability. Follow the
existing design system.
```

## Backend/API

```text
Use carlin-web-dev.

Add the cancellation-policy endpoint using the existing application
architecture. Do not introduce new layers unless required for a concrete
boundary or invariant. Preserve authorization, validation, and transaction
behavior.
```

## Review an AI-generated change

```text
Use carlin-web-dev as a review pass on this diff.

Look specifically for:
- unnecessary UI copy,
- speculative features,
- duplicate components,
- unnecessary abstractions,
- wrappers with no behavior,
- unrelated refactors,
- missing real production states.

Simplify where safe, then run the relevant project checks.
```

## Compact invocation

Once the agent can resolve the skill:

```text
Use carlin-web-dev and implement this feature: <requirement>.
```

The skill should infer the workflow; you should not need to repeat the anti-slop rules in every prompt.
