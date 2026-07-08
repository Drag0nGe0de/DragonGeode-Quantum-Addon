# GUI System - Click: sword_gs/next
# Go to the next page of Sword General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"sword_gs_next"}]

# Increment the sub-page (clamped to MAX_PAGE = 2).
execute if score .sword_gs_page gui_page matches ..1 run scoreboard players add .sword_gs_page gui_page 1

# Refresh the page.
function gui:features/gamemode_settings/sword/page
