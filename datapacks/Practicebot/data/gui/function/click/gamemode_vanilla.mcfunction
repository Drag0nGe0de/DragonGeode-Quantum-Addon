# GUI System - Click: gamemode_vanilla
# Vanilla (Crystal) mode: function quantum:options/crystal && tp to arena
clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode_vanilla"}]

# Store selected gamemode (.gm = 4 = Vanilla)
scoreboard players set .gm gui_page 4

# Run the gamemode function and teleport
function quantum:options/crystal
tp @s -701.5 31 90.5 0 0

# Return to play page (refreshes icon)
function gui:pages/play