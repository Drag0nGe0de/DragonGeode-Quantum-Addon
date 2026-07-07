# GUI System - Click: advanced_aggro
# Navigate to the Aggro Factor sub-page (page 20).
clear @s minecraft:blaze_powder[minecraft:custom_data={gui_btn:"advanced_aggro"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/advanced/aggro
