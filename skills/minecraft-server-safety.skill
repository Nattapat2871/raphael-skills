---
name: minecraft-server-safety
description: "MANDATORY guard for any Minecraft server work (Paper/Spigot/Purpur/Folia/Velocity/Fabric/Forge, plugins, configs, datapacks, Docker/Pterodactyl/systemd/screen/tmux). Use whenever a task touches a running or deployable Minecraft server: deploying plugin jars, replacing files, editing configs, reloading plugins, or anything that could stop, reload or restart the server. Never stop/reload/restart without the user's permission. Thai triggers: เซิร์ฟ, รีสตาร์ท, รีโหลด, วางทับไฟล์, ปลั๊กอิน, plugman, ปักแมน."
metadata:
  origin: raphael-skills
  author: nattapat2871 (https://nattapat2871.me)
---

# 🛡️ Minecraft Server Safety (กฎเหล็กของมาสเตอร์)

## Absolute rule
**Never stop, reload, or restart a Minecraft server (or anything on it) on your own.** A live server means live players and live world data. Only the user decides when it goes down or reloads.

Counts as stop/reload/restart (all forbidden without permission):
- Console/RCON/in-game: `stop`, `restart`, `reload`, `/reload confirm`, `/bukkit:reload`, `/plugman reload|load|unload|restart|enable|disable`, `/paper reload`, `/velocity reload`, proxy reload commands, plugin-specific reload commands (`/<plugin> reload`).
- Host level: `systemctl stop|restart|reload`, `service ... restart`, `docker stop|restart|kill|compose down|up --force-recreate`, Pterodactyl/Pelican/AMP/MCSManager power actions, `screen`/`tmux` send-keys of stop, `kill`, `pkill`, `taskkill`, restart scripts, cron/auto-restart triggers.
- Anything that indirectly does it: build/run tasks started in the live server directory (`runServer`), deleting `session.lock`, changing the start script/`restart-script` to force a restart.

## Normal workflow (no restart)
1. **Backup first** — copy every file you are about to replace (keep original name + timestamp) in a backup folder next to it.
2. **Replace / edit** the plugin jar, config, datapack or world file as asked. Prefer atomic replace (write temp → move).
3. **Verify offline** — validate YAML/JSON/TOML syntax, check jar integrity/target API version, compare against the backup. Do not start a second server instance on the same world.
4. **Report to the user**, briefly:
   - which files were replaced (full path) and where the backup is,
   - which configs were set and the key values,
   - **explicitly: "ยังไม่ได้ stop/reload/restart เซิร์ฟเวอร์"**, and what the user must do (or confirm) for the change to take effect.
5. **Ask** whether to apply it. Offer options with the lightest first: PlugMan reload (if available) → plugin's own reload → full restart.

## Permission rules
- Permission must be explicit and from the user in this conversation ("รีได้", "restart เลย").
- **Scope**: one-time permission covers that single action on that server. Don't reuse it for later changes.
- **Standing permission**: only if the user clearly says to restart/reload every time (e.g. "รีให้ทุกครั้งได้เลย"). It applies to that project/server only, lasts for the session unless the user says otherwise, and is revoked the moment the user says stop. When unsure, ask again.
- Even with permission: announce first, check the player count/maintenance state if you can (`list`), run `save-all` only if the user allowed console access, and confirm the server came back (logs show `Done`, plugin enabled with no errors). Report the result.
- If a prod/live server and permission is unclear → treat as **not allowed**.

## PlugMan first
- Detect: `plugins/PlugMan*.jar` / `PlugManX*.jar`, or `/plugman` present in the console.
- When the user has allowed reloading (one-time or standing) and PlugMan exists, **use PlugMan first** (`/plugman reload <Plugin>`, or `unload` → replace → `load` for jar swaps) before considering a full server restart.
- Escalate to a full restart only when PlugMan can't do it (core/Paper/NMS-dependent plugins, library changes, `server.properties`, JVM flags, world/datapack changes needing it, PlugMan errors) — and then **ask the user again** unless a standing permission explicitly covers full restarts.
- Warn when PlugMan reload is risky for a given plugin (static state, dependencies/softdepends, listeners that don't clean up) and let the user choose.

## Also never, without being asked
- Delete or reset worlds, player data, or `plugins/<Plugin>/data` folders.
- Change ports, `online-mode`, whitelist/ops, or forwarding secrets.
- Print or commit RCON passwords, `forwarding.secret`, tokens.

## Self-check before any action
"Could this command stop, reload, or restart anything on the server?" If yes → stop and ask.
