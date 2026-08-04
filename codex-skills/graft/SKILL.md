---
name: graft
description: Use NanoNets Graft to build and query a local codebase knowledge graph for Codex and other coding agents. Use when the user asks for Graft, repo context graphs, persistent agent context, or cheaper/faster codebase orientation.
author: nattapat2871 (https://nattapat2871.me)
source: https://github.com/NanoNets/Graft
upstream_package: "@nanonets/graft"
---

# Graft

Graft builds a local markdown/code graph for a repository so coding agents can orient faster without re-discovering the same code structure every turn.

## Install

```bash
npm install -g @nanonets/graft
```

For one-off use:

```bash
npx @nanonets/graft --help
```

## Codex MCP

Register the MCP server with Codex:

```bash
codex mcp add graft -- npx -y @nanonets/graft mcp
```

Expected config shape:

```toml
[mcp_servers.graft]
command = "npx"
args = ["-y", "@nanonets/graft", "mcp"]
```

## Safe Usage

1. Start with `graft init --dry-run` in the target repository to see every file it would touch.
2. Use `graft init --agents agents --no-global` when only project-level Codex `AGENTS.md` wiring is desired.
3. Use `graft build` for deterministic tree-sitter graph generation. This does not require an API key.
4. Use `graft build --deep` only when LLM summaries are desired and the user has configured `GRAFT_PROVIDER`, `GRAFT_API_KEY`, and `GRAFT_MODEL`.
5. Treat `graft/` as generated local context unless the repository intentionally commits it.

## Common Commands

```bash
graft init --dry-run
graft build
graft check
graft grep "question about the codebase"
graft map
graft viz
```

## Notes

- Graft is repo-scoped. Run commands from the repository root unless a command accepts an explicit path.
- Do not run `graft init` automatically in a user repository without a dry run or explicit request, because it can edit agent instruction/config files.
- Upstream repository: `https://github.com/NanoNets/Graft`

