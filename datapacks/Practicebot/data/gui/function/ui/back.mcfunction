clear @s minecraft:feather[minecraft:custom_data={gui_btn:"back"}]

scoreboard players operation .gui_back gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev4 gui_page

scoreboard players operation .gui gui_page = .gui_back gui_page
function gui:ui/refresh

execute unless score .gui_back gui_page matches 1..30 run function gui:features/main/page
