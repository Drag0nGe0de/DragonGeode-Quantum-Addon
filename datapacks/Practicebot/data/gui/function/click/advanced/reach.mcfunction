# GUI System - Click: advanced_reach
# Navigate to the Reach sub-page (page 18).
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/advanced/reach
