# GUI System - Click: start
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip