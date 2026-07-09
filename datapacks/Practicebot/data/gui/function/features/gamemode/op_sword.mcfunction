clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode_op_sword"}]

scoreboard players set .gm gui_page 5

function quantum:options/sword
tp @s -669.5 31.00 90.5 0 0

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page