clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_easy"}]

execute as quantumbot run function quantum:difficulty/1

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page
