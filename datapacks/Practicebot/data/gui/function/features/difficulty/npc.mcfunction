clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty_npc"}]

execute as quantumbot run function quantum:difficulty/0

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page
