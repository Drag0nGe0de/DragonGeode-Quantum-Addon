# GUI System - Click: mech_training
# Navigate to the mech training selection page (page 7).
clear @s minecraft:diamond[minecraft:custom_data={gui_btn:"mech_training"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/mech_training
