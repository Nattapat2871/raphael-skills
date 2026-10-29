---
name: mc-wisdom-king
description: Advanced Minecraft server and plugin engineering guidance for high-performance Paper, Spigot, Folia, Velocity, and NMS-heavy projects.
---

# Minecraft Development (Wisdom King Level)

## 🏗️ High-Performance Architecture
- **NMS & Internal Mastery**: Deep integration with `net.minecraft.server` for features beyond the standard API, maintained with version-independent abstractions.
- **Asynchronous Data Pipelines**: Mandatory use of `CompletableFuture` and Reactive patterns for all I/O, database, and API operations to ensure zero main-thread lag.
- **Memory Management**: Expert profiling and optimization of object allocation, collection usage, and NBT handling.

## 🛡️ Security & Integrity
- **Bytecode Manipulation**: Safe and strategic use of `ASM` or `Mixin` for deep-level modifications when necessary.
- **Anti-Exploit Design**: Proactive identification and mitigation of packet-level exploits, inventory desyncs, and movement cheats.

## 🚀 Lifecycle Automation
- **Advanced Gradle/Maven**: Multi-module project structures, automated obfuscation (SpecialSource/Remapper), and multi-platform support (Spigot/Paper/Folia/Velocity).
- **Automated Testing**: Integration of `MockBukkit` and custom unit test suites for complex game logic.


## 🛡️ Server Safety Rule (มาสเตอร์กำหนด)
Always apply `minecraft-server-safety`: never stop/reload/restart a Minecraft server without the user's permission. After replacing files and configuring, report what changed and that no restart/reload was done, then ask. If PlugMan is installed and reload is allowed, use PlugMan first before a full restart.
