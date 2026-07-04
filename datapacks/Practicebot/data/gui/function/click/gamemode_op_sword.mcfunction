# GUI System - Click: gamemode_op_sword
# OP Sword mode: function quantum:options/sword && tp to arena
clear @s minecraft:diamond_sword[minecraft:custom_data={gui_btn:"gamemode_op_sword"}]

# Store selected gamemode (.gm = 5 = OP Sword)
scoreboard players set .gm gui_page 5

# Run the gamemode function and teleport
function quantum:options/sword
tp @s -669.5 31.00 90.5 0 0

# Return to play page (refreshes icon)
function gui:pages/play