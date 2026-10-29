# Raphael skill installer for Windows (Claude Code + Codex)
# Author: nattapat2871 (https://nattapat2871.me)
# Run in PowerShell:  powershell -ExecutionPolicy Bypass -File .\install\install-all.ps1
# Needs: Node.js (npx), uv, and the `claude` CLI. Re-running is safe (idempotent).
$ErrorActionPreference = 'Continue'
function Step($m){ Write-Host "`n=== $m ===" -ForegroundColor Cyan }
function Try-Run($cmd){ Write-Host "> $cmd" -ForegroundColor DarkGray; try { Invoke-Expression $cmd } catch { Write-Warning $_ } }

# ---------- 1) Codex (+ shared ~/.agents/skills) via the open skills CLI ----------
Step 'Codex skills'
$codexSources = @(
  'vercel-labs/skills --skill find-skills',
  'obra/superpowers --skill *',
  'addyosmani/agent-skills --skill *',
  'rebelytics/one-skill-to-rule-them-all --skill *',
  'blader/humanizer',
  'cathrynlavery/diagram-design --skill *',
  'mvanhorn/last30days-skill --skill *',
  'leonxlnx/taste-skill --skill *',
  'Kreycin/scope --skill *',
  'morluto/rea --skill *',
  'nutlope/hallmark',
  'dietrichgebert/ponytail --skill *'
)
foreach($s in $codexSources){ Try-Run "npx -y skills add $s -g -a codex --copy -y" }
Try-Run 'npx -y impeccable install --providers=codex --scope=global'
Try-Run 'npx -y ui-ux-pro-max-cli init --ai codex --global'

# ---------- 2) Claude Code plugins (marketplaces) ----------
Step 'Claude Code plugins'
$claudePlugins = @(
  @('obra/superpowers-marketplace','superpowers@superpowers-marketplace'),
  @('thedotmack/claude-mem','claude-mem@thedotmack'),
  @('pbakaus/impeccable','impeccable@impeccable'),
  @('rebelytics/one-skill-to-rule-them-all','task-observer@one-skill-to-rule-them-all'),
  @('nutlope/hallmark','hallmark@hallmark'),
  @('blader/humanizer','humanizer@humanizer'),
  @('cathrynlavery/diagram-design','diagram-design@diagram-design'),
  @('mvanhorn/last30days-skill','last30days@last30days-skill'),
  @('leonxlnx/taste-skill','taste-skill@taste-skill'),
  @('nextlevelbuilder/ui-ux-pro-max-skill','ui-ux-pro-max@ui-ux-pro-max-skill'),
  @('dietrichgebert/ponytail','ponytail@ponytail'),
  @('morluto/rea','rea@rea'),
  @('addyosmani/agent-skills','agent-skills@addy-agent-skills'),
  @('Kreycin/scope','scope@scope')
)
foreach($p in $claudePlugins){
  Try-Run "claude plugin marketplace add $($p[0])"
  Try-Run "claude plugin install $($p[1])"
}
# find-skills for Claude (skills CLI)
Try-Run 'npx -y skills add vercel-labs/skills --skill find-skills -g -a claude-code --copy -y'
# Raphael's own vault as a Claude skills source
Try-Run 'npx -y skills add Nattapat2871/raphael-skills --skill raphael-self-evolution --skill wisdom-king-raphael -g -a claude-code -a codex --copy -y'

# ---------- 3) Tools that need a real install on this PC ----------
Step 'graphify'
Try-Run 'uv tool install graphifyy'
Try-Run 'graphify install'
Try-Run 'graphify install --platform codex'
Step 'agent-reach'
Try-Run 'uv tool install https://github.com/Panniantong/Agent-Reach/releases/latest/download/agent-reach.zip'
Try-Run 'agent-reach setup'
Step 'claude-mem (memory worker + hooks)'
Try-Run 'npx -y claude-mem install'
Step 'HeroUI v2 docs MCP'
Try-Run 'claude mcp add heroui-react -s user -- cmd /c npx -y @heroui/react-mcp@latest'

Write-Host "`nเสร็จแล้ว: restart Claude Code / Codex แล้วลอง /skills หรือ `$find-skills" -ForegroundColor Green
