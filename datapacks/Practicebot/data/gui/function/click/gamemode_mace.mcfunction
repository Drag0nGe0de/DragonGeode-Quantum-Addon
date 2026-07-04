# GUI System - Click: gamemode_mace
# Mace mode: function quantum:options/mace && tp to arena
clear @s minecraft:mace[minecraft:custom_data={gui_btn:"gamemode_mace"}]

# Store selected gamemode (.gm = 3 = Mace)
scoreboard players set .gm gui_page 3

# Run the gamemode function and teleport
function quantum:options/mace
tp @s -637.5 31.00 90.5 0 0

# Return to play page (refreshes icon)
function gui:pages/play