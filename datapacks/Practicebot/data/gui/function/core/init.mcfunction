
scoreboard objectives remove gui_page
scoreboard objectives add gui_page dummy
scoreboard objectives remove gui_hold
scoreboard objectives add gui_hold dummy
scoreboard objectives remove has_item
scoreboard objectives add has_item dummy

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
scoreboard players set .gui_prev3 gui_page 1
scoreboard players set .gui_prev4 gui_page 1
scoreboard players set .npc_gs_page gui_page 1
execute unless score .bot_scale var matches -1..255 run scoreboard players set .bot_scale var 2
execute unless score .bot_slowness var matches -1..255 run scoreboard players set .bot_slowness var -1
execute unless score .bot_speed var matches -1..255 run scoreboard players set .bot_speed var -1
execute unless score .jump_boost var matches -1..255 run scoreboard players set .jump_boost var -1
execute unless score .reach var matches -1..255 run scoreboard players set .reach var 6
execute unless score .react var matches -1..255 run scoreboard players set .react var 1
execute unless score .scale var matches -1..255 run scoreboard players set .scale var 2
execute unless score .slowness var matches -1..255 run scoreboard players set .slowness var -1
execute unless score .speed var matches -1..255 run scoreboard players set .speed var -1
execute unless score .strength var matches -1..255 run scoreboard players set .strength var -1
execute unless score .var var matches 1 run execute unless score .var var matches -1 run scoreboard players set .var var 1
execute if score .mode mode matches 1 run scoreboard players set .gm gui_page 5
execute if score .mode mode matches 2 run scoreboard players set .gm gui_page 4
execute if score .mode mode matches 3 run scoreboard players set .gm gui_page 3
execute if score .mode mode matches 4 run scoreboard players set .gm gui_page 2
execute if score .mode mode matches 5 run scoreboard players set .gm gui_page 2
execute if score .mode mode matches 6 run scoreboard players set .gm gui_page 1
execute unless score .mode mode matches 1..6 run scoreboard players set .gm gui_page 4
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0
execute unless score .difficulty difficulty matches 0..5 run scoreboard players set .difficulty difficulty 4

execute unless score .jumpreset chance matches 1..100 run scoreboard players set .jumpreset chance 100
execute unless score .tap chance matches 1..100 run scoreboard players set .tap chance 100
execute unless score .ping toggles matches 0..180 run scoreboard players set .ping toggles 100
execute unless score .factor eval matches ..999999999 run scoreboard players set .factor eval 999999999

scoreboard players set .gc_lk var 2000
scoreboard players set .gc_1k var 1000
