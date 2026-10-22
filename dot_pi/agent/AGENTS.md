# Working preferences

## Shell

- I use fish shell. Any shell commands given to me must use fish-compatible syntax.

## Models

- Choose subagent models by task, using these starting points:
  - `openai-codex/gpt-6-luna` / `low`: bounded lookups and mechanical work.
  - `openai-codex/gpt-6-sol` / `medium`: routine implementation and testing.
  - `openai-codex/gpt-6-astra` / `high`: difficult reasoning, architecture,
    and consequential review.
- Adjust subagent reasoning to task difficulty; escalate when needed.

Reference: https://developers.openai.com/api/docs/guides/latest-model

## Delegation

Prefer delegation when it improves speed, quality, or context use.
Follow pi-fabric's current guidance for execution and tool mechanics.
