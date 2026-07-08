# GUI System - Click: mace_gs/next
# Go to the next page of Mace General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"mace_gs_next"}]

# Increment the sub-page (clamped to MAX_PAGE = 2).
execute if score .mace_gs_page gui_page matches ..1 run scoreboard players add .mace_gs_page gui_page 1

# Refresh the page.
function gui:features/gamemode_settings/mace/page
