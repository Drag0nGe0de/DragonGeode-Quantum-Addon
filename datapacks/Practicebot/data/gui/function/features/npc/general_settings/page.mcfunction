execute unless score .npc_gs_page gui_page matches 1..2 run scoreboard players set .npc_gs_page gui_page 1
execute if score .npc_gs_page gui_page matches 1 run function gui:features/npc/general_settings/p1
execute if score .npc_gs_page gui_page matches 2 run function gui:features/npc/general_settings/p2
