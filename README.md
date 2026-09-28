# Carlin Web Dev Skill

A restrained web product engineering skill for AI coding agents.

The goal is simple: ship the smallest complete production-quality feature without AI-generated UI fluff or unnecessary engineering layers.

## What it optimizes

- repository-native implementation
- concise product UI and copy
- reuse before invention
- minimal abstractions
- production states and accessibility
- verification with the project's own toolchain
- a final deletion/simplification pass

## Files

- `SKILL.md` — core agent instructions; intentionally short enough to load routinely.
- `references/ui-rules.md` — UI copy, hierarchy, anti-slop, states, accessibility.
- `references/engineering-rules.md` — implementation and architecture restraint.
- `references/review-checklist.md` — final feature review.
- `scripts/verify.sh` — optional project-aware verifier.

## Usage

### Codex / agents that support skills

Install or copy this directory into the agent's skills location, then invoke the skill when implementing a web feature.

Example request:

```text
Use carlin-web-dev to add Google Calendar sync settings.
Follow the existing repository patterns and keep the UI minimal.
```

The skill is also useful as repository guidance: point an agent at `SKILL.md` before implementation.

### Project-level usage

Clone this repository beside or into your development environment:

```bash
git clone https://github.com/Carlin421/carlin-web-dev-skill.git
```

Then tell the coding agent to read `carlin-web-dev-skill/SKILL.md` before implementing the feature.

### Verification

From the target project root:

```bash
/path/to/carlin-web-dev-skill/scripts/verify.sh
```

The script detects common JavaScript/TypeScript, .NET, and Python setups. It only runs commands already represented by the project or available in the environment. Your project's CI remains authoritative.

## Design philosophy

### Before

```text
Google Calendar Integration Settings

Take control of your calendar synchronization experience.
When enabled, your appointments will automatically be synchronized
with Google Calendar, helping you stay organized and ensuring your
schedule is always up to date.

Enable Google Calendar Synchronization [toggle]
```

### After

```text
Google Calendar

Sync appointments [toggle]
```

The same restraint applies to code. Do not add a factory, wrapper, interface, service, helper, or dependency unless it solves a concrete problem in the current implementation.

## Source influences

This skill is an original, compact ruleset informed by recurring principles from public agent/frontend guidance such as:

- no-slop-ui: https://github.com/LeoStehlik/no-slop-ui
- Junaid-PK/frontend-design-skill: https://github.com/Junaid-PK/frontend-design-skill
- Anthropic Claude Code frontend-design skill: https://github.com/anthropics/claude-code/tree/main/plugins/frontend-design

It does not copy those projects wholesale. Existing repository conventions and product requirements take priority over arbitrary visual prescriptions.
