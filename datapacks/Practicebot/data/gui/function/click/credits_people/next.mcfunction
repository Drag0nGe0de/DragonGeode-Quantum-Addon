# GUI System - Click: credits_people/next
# Go to the next page of Important People.
clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"credits_people_next"}]

# Increment the sub-page (clamped to 2).
execute if score .credits_people_page gui_page matches ..1 run scoreboard players add .credits_people_page gui_page 1

# Refresh the page.
function gui:pages/credits_people
