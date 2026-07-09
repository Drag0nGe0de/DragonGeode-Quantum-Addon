clear @s minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:mycelium[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:snow_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:stone[minecraft:custom_data={gui_btn:"terrain"}]
clear @s minecraft:netherite_block[minecraft:custom_data={gui_btn:"terrain"}]

scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/terrain/page
