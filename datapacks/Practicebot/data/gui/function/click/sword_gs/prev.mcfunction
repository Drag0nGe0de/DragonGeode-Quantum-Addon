# GUI System - Click: sword_gs/prev
# Go to the previous page of Sword General Settings toggles.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"sword_gs_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .sword_gs_page gui_page matches 2.. run scoreboard players remove .sword_gs_page gui_page 1

# Refresh the page.
function gui:pages/sword_general_settings
