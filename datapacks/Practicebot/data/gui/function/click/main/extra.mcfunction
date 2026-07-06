# GUI System - Click: main/extra
# Navigate to the Extra page (page 14).
clear @s minecraft:redstone_torch[minecraft:custom_data={gui_btn:"extra"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/extra
