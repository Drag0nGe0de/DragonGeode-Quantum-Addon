
scoreboard players operation .gui_detect gui_page = .gui gui_page

scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot26 has_item 0
execute if score .gui_detect gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 1 store result score .slot26 has_item run data get entity @s Items[{Slot:26b}].count
execute if score .gui_detect gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/main/play
execute if score .gui_detect gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/main/statistics
execute if score .gui_detect gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/main/credits_support
execute if score .gui_detect gui_page matches 1 if score .slot26 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/main/extra

scoreboard players set .slot4 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 2 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 2 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 2 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/mech/training
execute if score .gui_detect gui_page matches 2 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/play/start
execute if score .gui_detect gui_page matches 2 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/open
execute if score .gui_detect gui_page matches 2 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/open
execute if score .gui_detect gui_page matches 2 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/open
execute if score .gui_detect gui_page matches 2 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/settings/open
execute if score .gui_detect gui_page matches 2 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 3 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 3 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 4 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 4 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 4 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 4 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 4 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 4 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 4 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/tnt_cart
execute if score .gui_detect gui_page matches 4 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/pot
execute if score .gui_detect gui_page matches 4 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/mace
execute if score .gui_detect gui_page matches 4 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/vanilla
execute if score .gui_detect gui_page matches 4 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode/op_sword
execute if score .gui_detect gui_page matches 4 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot4 has_item 0
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 5 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 5 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 5 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/flat
execute if score .gui_detect gui_page matches 5 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/badlands
execute if score .gui_detect gui_page matches 5 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/desert
execute if score .gui_detect gui_page matches 5 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/cave
execute if score .gui_detect gui_page matches 5 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/plains
execute if score .gui_detect gui_page matches 5 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/snowy_plains
execute if score .gui_detect gui_page matches 5 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/mushroom
execute if score .gui_detect gui_page matches 5 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/terrain/netherite
execute if score .gui_detect gui_page matches 5 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot4 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 6 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 6 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 6 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/npc
execute if score .gui_detect gui_page matches 6 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/easy
execute if score .gui_detect gui_page matches 6 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/medium
execute if score .gui_detect gui_page matches 6 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/hard
execute if score .gui_detect gui_page matches 6 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/crazy
execute if score .gui_detect gui_page matches 6 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/difficulty/master
execute if score .gui_detect gui_page matches 6 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 7 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 7 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 8 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 8 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 8 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 8 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 8 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/settings/npc
execute if score .gui_detect gui_page matches 8 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/settings/general
execute if score .gui_detect gui_page matches 8 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/settings/advanced
execute if score .gui_detect gui_page matches 8 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 9 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 9 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 9 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 9 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 9 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 9 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 9 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/settings/armor
execute if score .gui_detect gui_page matches 9 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/settings/general_settings
execute if score .gui_detect gui_page matches 9 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/settings/attributes
execute if score .gui_detect gui_page matches 9 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/settings/presets
execute if score .gui_detect gui_page matches 9 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/settings/tutorial
execute if score .gui_detect gui_page matches 9 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 10 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 10 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 10 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/dbp
execute if score .gui_detect gui_page matches 10 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/sbp
execute if score .gui_detect gui_page matches 10 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/prot
execute if score .gui_detect gui_page matches 10 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/leather
execute if score .gui_detect gui_page matches 10 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/chainmail
execute if score .gui_detect gui_page matches 10 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/iron
execute if score .gui_detect gui_page matches 10 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/diamond
execute if score .gui_detect gui_page matches 10 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/armor/netherite
execute if score .gui_detect gui_page matches 10 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 11 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 11 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 11 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 11 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 11 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/presets/sword
execute if score .gui_detect gui_page matches 11 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/presets/crystal
execute if score .gui_detect gui_page matches 11 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/presets/mace
execute if score .gui_detect gui_page matches 11 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot0 has_item 0
scoreboard players set .slot1 has_item 0
scoreboard players set .slot2 has_item 0
scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot6 has_item 0
scoreboard players set .slot7 has_item 0
scoreboard players set .slot8 has_item 0
scoreboard players set .slot9 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot26 has_item 0
execute if score .gui_detect gui_page matches 13 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 13 store result score .slot26 has_item run data get entity @s Items[{Slot:26b}].count
execute if score .gui_detect gui_page matches 13 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/bot_scale
execute if score .gui_detect gui_page matches 13 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/bot_slowness
execute if score .gui_detect gui_page matches 13 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/bot_speed
execute if score .gui_detect gui_page matches 13 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/jump_boost
execute if score .gui_detect gui_page matches 13 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/reach
execute if score .gui_detect gui_page matches 13 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/react
execute if score .gui_detect gui_page matches 13 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/scale
execute if score .gui_detect gui_page matches 13 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/slowness
execute if score .gui_detect gui_page matches 13 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/speed
execute if score .gui_detect gui_page matches 13 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/strength
execute if score .gui_detect gui_page matches 13 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 13 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/mode
execute if score .gui_detect gui_page matches 13 if score .slot26 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/attributes/reset

scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 14 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 14 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 14 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 14 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 14 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 14 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 14 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/extra/ai
execute if score .gui_detect gui_page matches 14 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/extra/optimize
execute if score .gui_detect gui_page matches 14 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/extra/teleports
execute if score .gui_detect gui_page matches 14 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/extra/music
execute if score .gui_detect gui_page matches 14 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/extra/bots
execute if score .gui_detect gui_page matches 14 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 15 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 15 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 15 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 15 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 15 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/bots/quantum
execute if score .gui_detect gui_page matches 15 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/bots/herobrine
execute if score .gui_detect gui_page matches 15 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/bots/notch
execute if score .gui_detect gui_page matches 15 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 16 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 16 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 16 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 16 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 16 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/teleports/hub
execute if score .gui_detect gui_page matches 16 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/teleports/advanced
execute if score .gui_detect gui_page matches 16 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/teleports/kitroom
execute if score .gui_detect gui_page matches 16 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 17 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 17 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 17 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 17 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 17 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 17 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 17 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/open
execute if score .gui_detect gui_page matches 17 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/open
execute if score .gui_detect gui_page matches 17 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/open
execute if score .gui_detect gui_page matches 17 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/open
execute if score .gui_detect gui_page matches 17 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/open
execute if score .gui_detect gui_page matches 17 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot9 has_item 0
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 18 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 18 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 18 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/0
execute if score .gui_detect gui_page matches 18 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/1
execute if score .gui_detect gui_page matches 18 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/2
execute if score .gui_detect gui_page matches 18 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/3
execute if score .gui_detect gui_page matches 18 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/4
execute if score .gui_detect gui_page matches 18 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/5
execute if score .gui_detect gui_page matches 18 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/6
execute if score .gui_detect gui_page matches 18 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/7
execute if score .gui_detect gui_page matches 18 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/reach/8
execute if score .gui_detect gui_page matches 18 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot2 has_item 0
scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot6 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 19 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 19 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 19 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/0
execute if score .gui_detect gui_page matches 19 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/1
execute if score .gui_detect gui_page matches 19 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/2
execute if score .gui_detect gui_page matches 19 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/3
execute if score .gui_detect gui_page matches 19 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/4
execute if score .gui_detect gui_page matches 19 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/5
execute if score .gui_detect gui_page matches 19 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/6
execute if score .gui_detect gui_page matches 19 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/7
execute if score .gui_detect gui_page matches 19 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/8
execute if score .gui_detect gui_page matches 19 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/jreset/9
execute if score .gui_detect gui_page matches 19 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot9 has_item 0
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 20 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 20 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 20 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/0
execute if score .gui_detect gui_page matches 20 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/1
execute if score .gui_detect gui_page matches 20 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/2
execute if score .gui_detect gui_page matches 20 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/3
execute if score .gui_detect gui_page matches 20 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/4
execute if score .gui_detect gui_page matches 20 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/5
execute if score .gui_detect gui_page matches 20 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/6
execute if score .gui_detect gui_page matches 20 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/7
execute if score .gui_detect gui_page matches 20 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/aggro/8
execute if score .gui_detect gui_page matches 20 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot2 has_item 0
scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot6 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 21 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 21 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 21 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/0
execute if score .gui_detect gui_page matches 21 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/1
execute if score .gui_detect gui_page matches 21 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/2
execute if score .gui_detect gui_page matches 21 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/3
execute if score .gui_detect gui_page matches 21 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/4
execute if score .gui_detect gui_page matches 21 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/5
execute if score .gui_detect gui_page matches 21 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/6
execute if score .gui_detect gui_page matches 21 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/7
execute if score .gui_detect gui_page matches 21 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/8
execute if score .gui_detect gui_page matches 21 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/tap/9
execute if score .gui_detect gui_page matches 21 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot2 has_item 0
scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot6 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 22 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 22 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 22 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/0
execute if score .gui_detect gui_page matches 22 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/1
execute if score .gui_detect gui_page matches 22 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/2
execute if score .gui_detect gui_page matches 22 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/3
execute if score .gui_detect gui_page matches 22 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/4
execute if score .gui_detect gui_page matches 22 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/5
execute if score .gui_detect gui_page matches 22 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/6
execute if score .gui_detect gui_page matches 22 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/7
execute if score .gui_detect gui_page matches 22 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/8
execute if score .gui_detect gui_page matches 22 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/advanced/ping/9
execute if score .gui_detect gui_page matches 22 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 23 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 23 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 23 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 23 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/credits/discord
execute if score .gui_detect gui_page matches 23 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/credits/open_people
execute if score .gui_detect gui_page matches 23 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot0 has_item 0
scoreboard players set .slot1 has_item 0
scoreboard players set .slot2 has_item 0
scoreboard players set .slot3 has_item 0
scoreboard players set .slot4 has_item 0
scoreboard players set .slot5 has_item 0
scoreboard players set .slot6 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 24 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 24 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 24 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back

scoreboard players set .slot12 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot18 has_item 0
execute if score .gui_detect gui_page matches 25 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 25 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 25 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 25 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/music/undertale
execute if score .gui_detect gui_page matches 25 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/music/otherside
execute if score .gui_detect gui_page matches 25 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
