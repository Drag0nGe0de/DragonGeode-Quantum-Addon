# GUI System - Click: gamemode_pot
# Pot mode: function quantum:options/pot && tp to arena
clear @s minecraft:flower_pot[minecraft:custom_data={gui_btn:"gamemode_pot"}]

# Store selected gamemode (.gm = 2 = Pot)
scoreboard players set .gm gui_page 2

# Run the gamemode function and teleport
function quantum:options/pot
tp @s -605.5 31.00 90.5 0 0

# Return to play page (refreshes icon)
function gui:pages/play