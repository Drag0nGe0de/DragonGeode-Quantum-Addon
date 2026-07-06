# GUI System - Click: settings_general
# General Settings — navigate to WIP page (not yet implemented)
clear @s minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"settings_general"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip
