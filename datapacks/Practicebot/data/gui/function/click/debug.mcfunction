# GUI System - Click: debug
clear @s minecraft:emerald_block[minecraft:custom_data={gui_btn:"debug"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip