# GUI System - Click: tnt_gs/next
# Go to the next page of TNT Cart General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"tnt_gs_next"}]

# Increment the sub-page (clamped to MAX_PAGE = 2).
execute if score .tnt_gs_page gui_page matches ..1 run scoreboard players add .tnt_gs_page gui_page 1

# Refresh the page.
function gui:pages/tnt_general_settings
