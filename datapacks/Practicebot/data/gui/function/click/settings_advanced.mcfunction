# GUI System - Click: settings_advanced
# Advanced Settings — navigate to WIP page (not yet implemented)
clear @s minecraft:chain_command_block[minecraft:custom_data={gui_btn:"settings_advanced"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip
