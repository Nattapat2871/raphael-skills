---
name: raphael-token-optimizer
description: "Cut the tokens Claude Code reloads every session. Use when Master says sessions feel expensive/slow, hits usage limits, or asks to measure/shrink CLAUDE.md, or sets up `scope` / `claude-token-optimizer` (cto). Wraps nadimtuhin/claude-token-optimizer and Kreycin/scope with safe defaults."
metadata:
  origin: raphael-skills
  author: nattapat2871 (https://nattapat2871.me)
  upstream: https://github.com/nadimtuhin/claude-token-optimizer ; https://github.com/Kreycin/scope
---

# 🪙 Raphael Token Optimizer

Two upstream tools, different jobs. Both target **Claude Code** (CLAUDE.md and hooks); in Codex they only help indirectly, so keep `AGENTS.md` short there too.

| Tool | What it does | Where |
|---|---|---|
| `claude-token-optimizer` (`cto`) | Measures what CLAUDE.md loads at session start; prunes/compresses it; moves finished tasks and old notes into side files | CLI, per project (needs Node 20+) |
| `scope` | Claude Code plugin with hooks: connectors off unless needed, handoff + `/clear` at large context, idle-cache warning, big-skill note, big-file Read guard | `/plugin install scope@scope`, then `/scope:setup` |

## Safe procedure for cto (per project, from the project root)
1. **Back up first**: `cp CLAUDE.md CLAUDE.md.mine`. `prune` and `compress` each write one `.bak`, and a second run overwrites it.
2. `npx -y claude-token-optimizer measure` — report the before-number.
3. `npx -y claude-token-optimizer prune --dry-run` → show Master the plan → only then `prune --yes`.
4. `compress` is lossy (truncates lists, strips HTML comments incl. tool markers): dry-run, show the diff, apply only with Master's OK.
5. Run `measure` again; report before/after.

Never: `init --force` on an existing project; `watch` from an agent (never exits); `hooks install` / edits to `~/.claude/settings.json` without Master's explicit OK; running on a project Master hasn't named.

## scope notes
- Needs a Claude Code session restart after install; run `/scope:setup` to choose features.
- Behavior changes to tell Master about: it holds the first full Read of files over 600 lines, can pause on idle with large context (`idleBlock`, off by default), and can keep claude.ai connectors off until a prompt needs them.
- `SCOPE_OFF=1` disables every hook. Config: `~/.config/scope/config.json`.
- `scope audit --days 7` shows where input tokens went (reads `~/.claude/projects` transcripts — local only).

## Report format
Before → after tokens, what moved where, how to undo (`.bak` / `.mine`).
