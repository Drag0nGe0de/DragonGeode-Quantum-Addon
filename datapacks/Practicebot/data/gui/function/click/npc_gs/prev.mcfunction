# GUI System - Click: npc_gs/prev
# Go to the previous page of NPC General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"npc_gs_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .npc_gs_page gui_page matches 2.. run scoreboard players remove .npc_gs_page gui_page 1

# Refresh the page.
function gui:pages/npc_general_settings
