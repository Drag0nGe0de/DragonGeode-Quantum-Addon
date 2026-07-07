# GUI System - Click: npc_armor
# Clear ALL possible chestplate variants since the icon changes based on .botgear
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_armor"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/armor
