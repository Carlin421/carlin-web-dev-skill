---
name: carlin-web-dev
description: Build and modify production web features with restrained UI, minimal copy, repository-native architecture, and minimal unnecessary code. Use for web UI, frontend, backend/API, full-stack features, and implementation reviews where clarity, reuse, and simplicity matter.
---

# Carlin Web Development

Build the smallest complete production-quality solution.

## Operating order

1. Inspect the repository before writing code.
2. Identify the user's actual job and acceptance criteria.
3. Find the closest existing implementation.
4. Reuse repository patterns and components.
5. Implement the smallest complete change.
6. Verify with the repository's existing toolchain.
7. Run a UI deletion pass and code simplification pass.
8. Report only material changes, validation, and unresolved risks.

Repository conventions override generic preferences unless they are clearly broken or conflict with the requirement.

## Repository first

Before adding code:
- Inspect nearby files and similar features.
- Reuse existing components, hooks, services, utilities, tokens, schemas, and API patterns.
- Match naming, folder structure, error handling, state management, and testing style.
- Do not introduce a new architectural pattern when an existing one solves the problem.
- Do not refactor unrelated code.

## Product restraint

Every visible element must help the user understand, decide, act, or recover.

Do not turn application screens into marketing pages. Assume users understand standard web conventions.

Remove text or UI that merely repeats:
- the page title,
- field labels,
- button labels,
- navigation,
- standard browser/app behavior,
- information already obvious from context.

Helper text must prevent a realistic mistake, explain a non-obvious consequence, or communicate information required to complete the task.

Prefer short action labels: Save, Cancel, Connect, Disconnect, Delete, Retry.

For detailed UI rules, read `references/ui-rules.md` when the task changes visible UI.

## Engineering restraint

Do not:
- create abstractions for a single use without a concrete reason,
- add wrappers that add no behavior,
- create interfaces solely to make code look architected,
- introduce dependencies when the existing stack is sufficient,
- duplicate existing utilities,
- add comments that restate obvious code,
- implement speculative requirements,
- build extension points with no current consumer.

Prefer boring, explicit, maintainable code.

For implementation decisions, read `references/engineering-rules.md` when the task adds or materially changes application logic.

## Production completeness

Handle states that can actually occur, including loading, empty, error, disabled, success, destructive actions, long content, and realistic production data when relevant.

Do not invent states or flows the product cannot enter.

Preserve accessibility: semantic HTML, keyboard access, visible focus, accessible names, sufficient contrast, and native semantics before ARIA.

## Verification

Use the repository's existing commands. Prefer its documented lint, typecheck, test, and build commands rather than inventing a new toolchain.

If available, run `scripts/verify.sh` from this skill as a convenience detector. It must not replace project-specific CI requirements.

## Final deletion pass

Before finishing, ask of every addition:

**UI:** Can this text, heading, card, badge, wrapper, animation, or decoration be removed without reducing usability or necessary context? If yes, remove it.

**Code:** Can this abstraction, helper, wrapper, dependency, comment, or layer be removed without reducing correctness or maintainability? If yes, remove it.

Use `references/review-checklist.md` for substantial features or final reviews.

## Response style

Do not narrate basic implementation steps or explain common programming concepts unless asked.

Report concisely:
- what changed,
- important decisions,
- validation performed,
- unresolved issues or risks.

Do not restate the request.
