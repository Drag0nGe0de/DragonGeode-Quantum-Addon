# GUI System — Click: back
# Remove the back feather and return to the previous page using history stack.
clear @s minecraft:feather[minecraft:custom_data={gui_btn:"back"}]

# Store the back-target page, then shift the history stack
scoreboard players operation #s gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page

# Navigate to the stored back-target page
execute if score #s gui_page matches 1 run function gui:pages/main
execute if score #s gui_page matches 2 run function gui:pages/play
execute if score #s gui_page matches 3 run function gui:pages/wip