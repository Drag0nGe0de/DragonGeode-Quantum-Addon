# GUI System - Click: npc_attributes
clear @s minecraft:beacon[minecraft:custom_data={gui_btn:"npc_attributes"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/wip
