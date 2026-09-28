# Final Review Checklist

Use proportionally. A tiny change does not need ceremony.

## Requirement
- [ ] The requested user outcome works end to end.
- [ ] No speculative features were added.
- [ ] Unrelated behavior was not changed.

## Repository fit
- [ ] Existing patterns/components were reused where appropriate.
- [ ] Naming and structure match nearby code.
- [ ] No unnecessary dependency or architectural pattern was introduced.

## UI
- [ ] Every new line of copy carries useful information.
- [ ] Obvious behavior is not explained.
- [ ] No duplicate headings/descriptions.
- [ ] No decorative card/badge/wrapper exists without a job.
- [ ] Loading/error/empty/disabled states are handled when real.
- [ ] Keyboard, focus, labels, semantics, and contrast remain usable.

## Code
- [ ] No unnecessary wrapper/interface/helper/factory.
- [ ] No obvious-code comments.
- [ ] Validation, authorization, tenant boundaries, and transactions are preserved where relevant.
- [ ] Side effects account for retries/idempotency where relevant.
- [ ] No accidental duplication of server/client state.

## Verification
- [ ] Relevant lint/typecheck ran.
- [ ] Relevant tests ran.
- [ ] Build ran when appropriate.
- [ ] Failures or skipped checks are reported, not hidden.

## Deletion pass
- [ ] Remove any UI element whose deletion does not reduce usability.
- [ ] Remove any code layer whose deletion does not reduce correctness or maintainability.
