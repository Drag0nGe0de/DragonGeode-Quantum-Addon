# GUI System - Click: settings_npc
# Navigate to the NPC settings page (page 9).
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"settings_npc"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/npc_settings
