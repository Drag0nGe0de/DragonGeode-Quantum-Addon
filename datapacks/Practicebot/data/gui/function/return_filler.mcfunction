# GUI System — Filler Return
# Clears any accidentally-taken filler items and refreshes the barrel page.
clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]

# Refresh whichever page is currently shown
execute if score .gui gui_page matches 1 run function gui:pages/main
execute if score .gui gui_page matches 2 run function gui:pages/wip

# Safety: if state is unknown, fall back to main
execute unless score .gui gui_page matches 1..2 run function gui:pages/main
