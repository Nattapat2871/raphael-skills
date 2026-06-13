---
name: mc-dev-suite
description: Minecraft server development suite for Plugins (Paper/Purpur), Proxies (Velocity/Bungee), Mods (Fabric/NeoForge), NMS, and TPS debugging. Use when building game mechanics, proxy networks, or solving server lag.
---

# Minecraft Development Suite

## Overview
This skill specializes in the Minecraft technical ecosystem. It provides high-performance, production-ready Java code for plugins, proxies, and mods, prioritizing server TPS and idiomatic API usage.

## Core Capabilities

### 1. Paper/Purpur Plugin Development
- **Prompt:** Implement [feature] for Paper/Purpur [version].
- **Focus:** Event listeners, schedulers, persistent data containers, and custom systems (Economy, Items, etc.).
- **Execution:** Analyze API requirements and output complete Java source code immediately.

### 2. Velocity/BungeeCord Proxy Networking
- **Prompt:** Develop [feature] for Velocity/BungeeCord.
- **Focus:** Cross-server chat, global party systems, and Plugin Messaging Channels.
- **Execution:** Define network architecture and generate backend proxy code.

### 3. NMS & ProtocolLib (Deep Mechanics)
- **Prompt:** Manipulate internals using [NMS/ProtocolLib] for [version].
- **Focus:** Packet interception, custom entity pathfinding, and packet structures.
- **Execution:** Handle async execution to protect TPS and provide exact mappings/code.

### 4. Fabric/NeoForge Modding
- **Prompt:** Develop a mod for Fabric/NeoForge implementing [feature].
- **Focus:** Registry process, Mixins, and injection points.
- **Execution:** Provide full Java codebase and Mixin configurations.

### 5. TPS & Lag Debugging
- **Prompt:** Debug this performance issue: [log/timings].
- **Focus:** Main-thread blocking, memory leaks, and plugin conflicts.
- **Execution:** Identify root cause and provide refactored code to restore high TPS.

## Design Principles
- **Zero Fluff:** Bypass conversational filler. Deliver code and architecture directly.
- **Outcome-First:** Ensure code handles edge cases and follows existing naming conventions.
- **Performance:** Always prefer asynchronous execution for non-API-restricted tasks to maintain 20 TPS.
