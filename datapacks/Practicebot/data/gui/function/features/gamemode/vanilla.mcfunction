clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode_vanilla"}]

scoreboard players set .gm gui_page 4

function quantum:options/crystal
tp @s -701.5 31 90.5 0 0

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page