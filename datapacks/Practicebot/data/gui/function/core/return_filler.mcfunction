# GUI System — Filler Return
# Clears any accidentally-taken filler items and refreshes the barrel page.
clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"npc_gs_pageinfo"}]

# Refresh whichever page is currently shown (page functions also sync satellite barrels)
execute if score .gui gui_page matches 1 run function gui:pages/main
execute if score .gui gui_page matches 2 run function gui:pages/play
execute if score .gui gui_page matches 3 run function gui:pages/wip
execute if score .gui gui_page matches 4 run function gui:pages/gamemode
execute if score .gui gui_page matches 5 run function gui:pages/terrain
execute if score .gui gui_page matches 6 run function gui:pages/difficulty
execute if score .gui gui_page matches 7 run function gui:pages/mech_training
execute if score .gui gui_page matches 8 run function gui:pages/settings
execute if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute if score .gui gui_page matches 10 run function gui:pages/armor
execute if score .gui gui_page matches 11 run function gui:pages/presets
execute if score .gui gui_page matches 12 run function gui:pages/npc_general_settings

# Safety: if state is unknown, fall back to main
execute unless score .gui gui_page matches 1..12 run function gui:pages/main
