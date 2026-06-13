---
name: discord-bot-pycord
description: Discord bot engineering with Pycord v2.8.0. Use for building slash commands, cogs, interactive UI (buttons/modals), background tasks, and API integrations.
---

# Discord Bot Engineering (Pycord v2.8.0)

## Overview
This skill focuses on building modern, robust Discord bots using the Pycord library. It emphasizes scalability through Cogs, interactivity through UI components, and reliability through async background tasks.

## Core Capabilities

### 1. Slash Commands & Interaction
- **Prompt:** Build a slash command for [function] in Pycord v2.8.0.
- **Focus:** Application command options, autocomplete, and deferred responses (to prevent timeouts).
- **Execution:** Provide complete Python code with proper type hinting.

### 2. Cogs & Modular Architecture
- **Prompt:** Write a Cog class for [category].
- **Focus:** setup functions, specific event listeners (on_message, etc.), and localized error handling.
- **Execution:** Generate a standalone, production-ready Python file.

### 3. UI Components (Views & Modals)
- **Prompt:** Create a [View/Modal] for [interaction].
- **Focus:** Buttons, Select Menus, callback handling, and state management.
- **Execution:** Output full implementation with timeout handling.

### 4. Background Tasks & Automation
- **Prompt:** Implement an async background task for [function].
- **Focus:** `discord.ext.tasks`, error recovery, and loop management.
- **Execution:** Show exact integration within a Cog or main bot file.

### 5. API Integration
- **Prompt:** Integrate [API] into Pycord using aiohttp.
- **Focus:** Asynchronous fetching, JSON mapping, and beautiful Discord Embeds.
- **Execution:** Deliver exact Python code for the command and data processing.

## Design Principles
- **Async-First:** All operations must be non-blocking using `await`.
- **Error Resilience:** Robust try-except blocks within commands and tasks.
- **Visual Appeal:** Use Embeds and UI components to enhance user experience.
