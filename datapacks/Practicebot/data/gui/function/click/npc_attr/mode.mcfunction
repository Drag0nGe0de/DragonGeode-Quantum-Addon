# GUI System - Click: npc_attr/mode
# Toggle between increase mode (.var var = 1) and decrease mode (.var var = -1).
# Clear both wool variants since the icon changes based on mode.
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:red_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]

# Flip the mode: if currently increase (1), switch to decrease (-1).
# Otherwise (including 0/unset), switch to increase (1).
execute if score .var var matches 1 run scoreboard players set .var var -1
execute unless score .var var matches 1 run scoreboard players set .var var 1

# Refresh the page so the wool color + all lore lines update.
function gui:pages/npc_attributes
