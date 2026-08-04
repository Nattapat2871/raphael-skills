---
name: terminator
description: Use Terminator MCP for Windows desktop automation across applications, browser sessions, windows, and accessibility-tree selectors. Use when the user explicitly asks for Terminator, Mediar AI, Windows computer-use automation, or deterministic desktop workflow automation.
author: nattapat2871 (https://nattapat2871.me)
source: https://github.com/mediar-ai/terminator
upstream_package: terminator-mcp-agent
---

# Terminator MCP

Terminator is a Windows-only desktop automation MCP from Mediar AI. It is useful when a task needs deterministic control over local Windows applications, browser sessions, windows, screenshots, or accessibility-tree selectors.

## Availability

- Windows: supported through `terminator-mcp-agent`.
- macOS/Linux/SSH VPS: upstream does not support desktop automation there. Keep this skill as reference only on those machines unless upstream support changes.

## MCP Configuration

Use the Codex MCP entry:

```toml
[mcp_servers.terminator-mcp-agent]
command = "npx"
args = ["-y", "terminator-mcp-agent@latest"]

[mcp_servers.terminator-mcp-agent.env]
LOG_LEVEL = "info"
RUST_BACKTRACE = "1"
```

Equivalent CLI install:

```bash
codex mcp add terminator-mcp-agent --env LOG_LEVEL=info --env RUST_BACKTRACE=1 -- npx -y terminator-mcp-agent@latest
```

## Operating Rules

1. Use Terminator only for user-authorized desktop automation. Do not change external accounts, purchases, publishing, webhooks, credentials, or production state unless the current user request explicitly asks for it.
2. Prefer deterministic selectors from the Windows accessibility tree: `name`, `role`, `window`, `AutomationId`, and related UIA metadata.
3. Before a state-changing workflow, identify the active app/window and the exact intended action.
4. For browser-only work, consider existing browser tools first unless the user specifically requests Terminator or the task needs cross-application Windows automation.
5. On Linux/SSH, do not assume the MCP will run. State that Terminator is Windows-only and use normal shell/browser tools instead.

## Verification

- Package: `npm view terminator-mcp-agent version`
- MCP list: `codex mcp list`
- Upstream repository: `https://github.com/mediar-ai/terminator`

