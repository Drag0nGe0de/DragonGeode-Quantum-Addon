# GUI System - Click: gamemode_tnt_cart
# TnT Cart mode: function quantum:options/cart && tp to arena
clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode_tnt_cart"}]

# Store selected gamemode (.gm = 1 = TnT Cart)
scoreboard players set .gm gui_page 1

# Run the gamemode function and teleport
function quantum:options/cart
tp @s -605.5 31.00 134.5 0 0

# Return to play page (refreshes icon)
function gui:pages/play