---
name: raphael-skill-router
description: "PRIMARY skill. Use at the start of EVERY task, and again when the task changes direction: look at the available skills, pick the few that fit the work, load only those, and follow them. If nothing fits, search for one (find-skills) and propose it. Triggers: any request from Master; 'ใช้สกิลอะไรดี', 'เลือกสกิล', 'หาสกิล'."
metadata:
  origin: raphael-skills
  author: nattapat2871 (https://nattapat2871.me)
---

# 🧭 Raphael Skill Router (สกิลหลัก)

Goal: for every task, use the *right* skills — not none, and not all of them.

## Procedure
1. **Classify the task** in one line: domain (code / UI / Minecraft / writing / research / ops), phase (explore, plan, build, debug, review, ship), risk (touches live server, data, secrets, money, git push?).
2. **Pick skills** from the list the host already shows you (names + descriptions are enough; don't open every SKILL.md). Choose 1–4: one for the domain, one for the phase, plus any guard that applies.
3. **Load only those**, follow them, and say in one short line which skills you are using and why. Skip the line for trivial tasks.
4. **Nothing fits?** Run `find-skills` (`npx skills find <keywords>`), shortlist 1–3 with source and what they do, and ask Master before installing. Third-party skills are instructions that run with full agent permissions: read the SKILL.md and scripts first, prefer well-known sources, never install silently.
5. **Re-route** when the task shifts (e.g. build → debug → review), and unload what no longer applies.
6. **Close the loop**: if routing was wrong or a skill was missing, hand off to `raphael-self-evolution`.

## Always-on guards (apply regardless of routing)
- `minecraft-server-safety` — any Minecraft server work. Never stop/reload/restart without permission.
- `raphael-self-evolution` — after non-trivial tasks.
- `verification-before-completion` — before saying a task is done.

## Default routing for Master's work
| Work | Use |
|---|---|
| New feature / unclear idea | `brainstorming` → `spec-driven-development` / `writing-plans` → `executing-plans` or `subagent-driven-development` |
| Bug / failing test | `systematic-debugging`, `debugging-and-error-recovery`, `test-driven-development` |
| Code review / before merge | `requesting-code-review`, `code-review-and-quality`, `security-and-hardening` |
| Refactor / cleanup | `code-simplification`, `ponytail` skills, `hexagonal-architecture`/language-pattern skills |
| Frontend / UI | `impeccable`, `hallmark`, `design-taste-frontend`, `ui-ux-pro-max`, `frontend-ui-engineering`, `heroui-react` (v3) or HeroUI v2 MCP |
| Diagrams / architecture drawings | `diagram-design` |
| Docs / writing that must sound human | `humanizer`, `documentation-and-adrs` |
| Understand a big codebase | `graphify`, `codebase-onboarding`, `repo-scan` |
| Reverse engineering | `reverse-engineer-anything`, `rea-*` (needs the rea MCP) |
| Research / what's new | `last30days`, `agent-reach`, `deep-research`, `search-first` |
| Minecraft plugin/mod/server | `mc-dev-suite`, `minecraft-*` + `minecraft-server-safety` |
| Discord bot | `discord-bot-pycord` |
| Git / CI / shipping | `git-workflow-and-versioning`, `ci-cd-and-automation`, `shipping-and-launch`, `finishing-a-development-branch` |
| Long sessions / token cost | `scope`, `raphael-token-optimizer`, `strategic-compact`, `context-budget` |
| Requirements unclear | `interview-me`, `idea-refine` |

## Token discipline
Loading a skill costs tokens every turn. Prefer the smallest set that covers the task; never preload "just in case". Large skills: read the top-level SKILL.md first, open `references/` only when needed.

## Limits
If two skills conflict, the stricter safety rule wins, then Master's explicit instruction, then the more specific skill. Routing never overrides system/developer instructions or Master's authorization boundaries.
