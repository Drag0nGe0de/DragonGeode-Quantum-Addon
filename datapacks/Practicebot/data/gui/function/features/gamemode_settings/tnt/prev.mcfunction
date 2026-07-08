# GUI System - Click: tnt_gs/prev
# Go to the previous page of TNT Cart General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"tnt_gs_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .tnt_gs_page gui_page matches 2.. run scoreboard players remove .tnt_gs_page gui_page 1

# Refresh the page.
function gui:features/gamemode_settings/tnt/page
