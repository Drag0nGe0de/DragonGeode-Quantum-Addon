# GUI System - Click: advanced_jreset
# Navigate to the Jump Reset Chance sub-page (page 19).
clear @s minecraft:diamond_boots[minecraft:custom_data={gui_btn:"advanced_jreset"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/advanced/jreset
