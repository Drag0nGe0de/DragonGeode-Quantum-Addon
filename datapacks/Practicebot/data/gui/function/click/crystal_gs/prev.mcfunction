# GUI System - Click: crystal_gs/prev
# Go to the previous page of Crystal General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"crystal_gs_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .crystal_gs_page gui_page matches 2.. run scoreboard players remove .crystal_gs_page gui_page 1

# Refresh the page.
function gui:pages/crystal_general_settings
