# UI Rules

Use these rules when creating or modifying visible product UI.

## Default posture

Prefer familiar, compact, scannable product interfaces. Existing design-system conventions win over arbitrary aesthetic rules.

Every element must earn its space.

## Copy

- Use plain product language, not marketing language.
- Do not explain obvious controls or standard interactions.
- Avoid subtitles that merely paraphrase the heading.
- Avoid instructions such as "click the button below" when the action is visible.
- Avoid filler such as "seamlessly", "effortlessly", "powerful", "all-in-one", "take control", and "get started" unless the product genuinely needs marketing copy.
- Prefer labels and short sentences.
- State consequences when they are non-obvious or irreversible.
- Error messages should say what happened and, when useful, what the user can do next.

Example:

Bad:
> Seamlessly connect your Google Calendar to effortlessly keep all your appointments synchronized in one convenient place.

Better:
> Google Calendar  
> Sync appointments  
> Connect

If the page context already establishes Google Calendar, "Sync appointments" plus the control may be enough.

## Structure

Avoid by default:
- decorative hero sections inside applications,
- fake metrics or placeholder KPI cards,
- cards nested inside cards without hierarchy value,
- a card around every small group of content,
- duplicate page/section headings,
- unnecessary badges,
- excessive dividers and containers,
- excessive whitespace that reduces scanability,
- decorative gradients, glow, glass effects, and animation,
- confirmation dialogs for easily reversible low-risk actions.

These are not absolute bans. Use them when the product, existing design system, or task genuinely calls for them.

## Hierarchy

- Give each screen a clear primary job.
- Make the primary action identifiable without adding explanatory prose.
- Group related controls by task, not merely to fill a layout.
- Prefer progressive disclosure for advanced or uncommon settings.
- Keep destructive actions visually and spatially distinct when appropriate.

## States

Design only states the feature can actually enter. Consider:
- loading,
- empty,
- error,
- disabled,
- success,
- long names/content,
- realistic record counts,
- permission restrictions.

Empty states should help the user proceed; they do not need motivational copy.

## Accessibility

- Use semantic elements and native controls first.
- All interactive controls need accessible names.
- Preserve keyboard operation and visible focus.
- Do not use color as the only status signal.
- Keep touch/click targets practical.
- Use ARIA only where native semantics are insufficient.

## UI deletion pass

For every new visible element ask:
1. What user decision or action does this support?
2. Is the information already communicated elsewhere?
3. Does it prevent a realistic error?
4. Would removing it materially reduce usability?

If the answer to 4 is no, remove it.
