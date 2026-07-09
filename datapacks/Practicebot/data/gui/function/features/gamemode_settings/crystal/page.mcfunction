execute unless score .crystal_gs_page gui_page matches 1..2 run scoreboard players set .crystal_gs_page gui_page 1
execute unless score .crystal_playstyle toggles matches 1..2 run scoreboard players set .crystal_playstyle toggles 1
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .crystal_gs_page gui_page matches 1 run function gui:features/gamemode_settings/crystal/p1
execute if score .crystal_gs_page gui_page matches 2 run function gui:features/gamemode_settings/crystal/p2
