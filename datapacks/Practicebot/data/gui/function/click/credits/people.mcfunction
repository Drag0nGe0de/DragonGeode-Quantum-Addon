# GUI System - Click: credits_people
# Navigate to the Important People page (page 24).
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_people"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/credits_people
