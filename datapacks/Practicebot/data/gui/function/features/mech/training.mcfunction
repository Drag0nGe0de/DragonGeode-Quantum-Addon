clear @s minecraft:diamond[minecraft:custom_data={gui_btn:"mech_training"}]

scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page

execute if score .gm gui_page matches 1 run function gui:features/mech/page
execute if score .gm gui_page matches 3 run function gui:features/mech/page
execute if score .gm gui_page matches 4 run function gui:features/mech/page

execute if score .gm gui_page matches 0 run function gui:features/wip/page
execute if score .gm gui_page matches 2 run function gui:features/wip/page
execute if score .gm gui_page matches 5 run function gui:features/wip/page
