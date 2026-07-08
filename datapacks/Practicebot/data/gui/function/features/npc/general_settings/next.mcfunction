# GUI System - Click: npc_gs/next
# Go to the next page of NPC General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"npc_gs_next"}]

# Increment the sub-page (clamped to MAX_PAGE).
execute if score .npc_gs_page gui_page matches ..1 run scoreboard players add .npc_gs_page gui_page 1

# Refresh the page.
function gui:features/npc/general_settings/page
