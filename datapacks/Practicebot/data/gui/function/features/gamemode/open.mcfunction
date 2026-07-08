# GUI System - Click: gamemode
# Navigate to the gamemode selection page (page 4)
# Clear ALL possible icon variants (the icon changes based on selected gamemode)
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode"}]
clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode"}]
clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/gamemode/page