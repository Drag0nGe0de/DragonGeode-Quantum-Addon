# GUI System - Click: mace_gs/prev
# Go to the previous page of Mace General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"mace_gs_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .mace_gs_page gui_page matches 2.. run scoreboard players remove .mace_gs_page gui_page 1

# Refresh the page.
function gui:features/gamemode_settings/mace/page
