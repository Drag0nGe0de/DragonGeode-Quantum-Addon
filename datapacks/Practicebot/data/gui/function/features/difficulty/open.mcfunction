# GUI System - Click: difficulty
# Navigate to the difficulty selection page (page 6)
# Clear ALL possible icon variants (the icon changes based on selected difficulty)
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty"}]
clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"difficulty"}]
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/difficulty/page
