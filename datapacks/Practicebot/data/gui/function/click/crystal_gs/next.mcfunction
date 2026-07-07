# GUI System - Click: crystal_gs/next
# Go to the next page of Crystal General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"crystal_gs_next"}]

# Increment the sub-page (clamped to MAX_PAGE = 2).
execute if score .crystal_gs_page gui_page matches ..1 run scoreboard players add .crystal_gs_page gui_page 1

# Refresh the page.
function gui:pages/crystal_general_settings
