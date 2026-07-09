execute unless score .pot_gs_page gui_page matches 1 run scoreboard players set .pot_gs_page gui_page 1
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .pot_gs_page gui_page matches 1 run function gui:features/gamemode_settings/pot/p1
