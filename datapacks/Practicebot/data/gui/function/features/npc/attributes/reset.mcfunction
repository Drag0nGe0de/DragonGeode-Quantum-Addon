clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"npc_attr_reset"}]

function npc:settings/reset_custom

scoreboard players set .var var 1

function gui:features/npc/attributes/page
