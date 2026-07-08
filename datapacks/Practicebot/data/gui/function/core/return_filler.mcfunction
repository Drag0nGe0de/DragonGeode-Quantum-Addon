# GUI System — Filler Return
# Clears any accidentally-taken filler items and refreshes the current page.
clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"npc_gs_pageinfo"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"mace_gs_pageinfo"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"crystal_gs_pageinfo"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"sword_gs_pageinfo"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"pot_gs_pageinfo"}]
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"tnt_gs_pageinfo"}]
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:red_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_person"}]

# Refresh the current page via the centralized dispatcher.
function gui:ui/refresh
