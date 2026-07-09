clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:red_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]

execute if score .var var matches 1 run return run scoreboard players set .var var -1
scoreboard players set .var var 1

function gui:features/npc/attributes/page
