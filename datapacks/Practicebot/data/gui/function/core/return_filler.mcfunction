# GUI System — Filler Return
# Clears any accidentally-taken filler items and refreshes the barrel page.
clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"npc_gs_pageinfo"}]
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:red_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_person"}]

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
execute if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute if score .gui gui_page matches 14 run function gui:pages/extra
execute if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute if score .gui gui_page matches 16 run function gui:pages/teleports
execute if score .gui gui_page matches 17 run function gui:pages/advanced
execute if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute if score .gui gui_page matches 22 run function gui:pages/advanced/ping
execute if score .gui gui_page matches 23 run function gui:pages/credits_support
execute if score .gui gui_page matches 24 run function gui:pages/credits_people

# Safety: if state is unknown, fall back to main
execute unless score .gui gui_page matches 1..24 run function gui:pages/main
