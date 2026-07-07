# GUI System - Click: credits_people/prev
# Go to the previous page of Important People.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"credits_people_prev"}]

# Decrement the sub-page (clamped to 1).
execute if score .credits_people_page gui_page matches 2.. run scoreboard players remove .credits_people_page gui_page 1

# Refresh the page.
function gui:pages/credits_people
