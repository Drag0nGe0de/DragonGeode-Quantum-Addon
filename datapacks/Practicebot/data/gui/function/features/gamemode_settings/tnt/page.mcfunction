execute unless score .tnt_gs_page gui_page matches 1..2 run scoreboard players set .tnt_gs_page gui_page 1
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .tnt_gs_page gui_page matches 1 run function gui:features/gamemode_settings/tnt/p1
execute if score .tnt_gs_page gui_page matches 2 run function gui:features/gamemode_settings/tnt/p2
