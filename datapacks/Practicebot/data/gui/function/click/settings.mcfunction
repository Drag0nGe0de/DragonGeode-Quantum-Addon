# GUI System - Click: settings
# Navigate to the settings page (page 8).
clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"settings"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/settings
