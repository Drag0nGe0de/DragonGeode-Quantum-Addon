# GUI System - Click: npc_armor
clear @s minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"npc_armor"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/armor
