# GUI System - Click: gamemode_mace
# Mace mode: function quantum:options/mace && tp to arena
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode_mace"}]

# Store selected gamemode (.gm = 3 = Mace)
scoreboard players set .gm gui_page 3

# Run the gamemode function and teleport
function quantum:options/mace
tp @s -637.5 31.00 90.5 0 0

# Reset history stack so Back from Play returns to Main (not to Play itself).
# Without this, .gui_prev stays at 2 (Play) from the earlier Play->Gamemode
# push, and Back from Play would re-navigate to Play -- appearing "stuck".
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes icon)
function gui:pages/play