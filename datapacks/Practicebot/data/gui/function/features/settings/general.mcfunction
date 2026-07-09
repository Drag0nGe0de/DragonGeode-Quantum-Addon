clear @s minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"settings_general"}]

scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page

execute if score .gm gui_page matches 1 run function gui:features/gamemode_settings/tnt/page
execute if score .gm gui_page matches 2 run function gui:features/gamemode_settings/pot/page
execute if score .gm gui_page matches 3 run function gui:features/gamemode_settings/mace/page
execute if score .gm gui_page matches 4 run function gui:features/gamemode_settings/crystal/page
execute if score .gm gui_page matches 5 run function gui:features/gamemode_settings/sword/page
execute unless score .gm gui_page matches 1..5 run function gui:features/wip/page
