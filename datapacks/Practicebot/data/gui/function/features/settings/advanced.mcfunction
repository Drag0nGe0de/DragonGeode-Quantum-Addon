# GUI System - Click: settings_advanced
# Advanced Settings — navigate to the Advanced Settings hub page (page 17).
clear @s minecraft:chain_command_block[minecraft:custom_data={gui_btn:"settings_advanced"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/advanced/page
