# GUI System - Click: settings_npc
# NPC Settings — navigate to WIP page (not yet implemented)
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"settings_npc"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip
