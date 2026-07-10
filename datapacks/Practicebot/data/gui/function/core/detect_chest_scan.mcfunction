
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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot21 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot23 has_item 0
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 store result score .slot23 has_item run data get entity @s Items[{Slot:23b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/shield
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/better_shield
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/auto_wind
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/bot_sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/airborne_sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/display_shield_dura
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/falldmg
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/far_pearl
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/insta_shieldcd
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/jreset
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/no_pearl_land
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/pflash
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/rain
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/refill
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/simfire
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/strafe
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/strafe_fb
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 if score .slot23 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/next
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 store result score .slot21 has_item run data get entity @s Items[{Slot:21b}].count
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/stun
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/uhc
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/wind_pearl
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/wind
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/move_forward
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 if score .slot21 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/npc/general_settings/prev
execute if score .gui_detect gui_page matches 12 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 12 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 12 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 12 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot21 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot23 has_item 0
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 store result score .slot23 has_item run data get entity @s Items[{Slot:23b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/armor
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/breach
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/spear
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/wind_pearl
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/elytra
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/far_pearl
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/no_pearl_land
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/cobweb
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/water
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/no_fall
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/stun
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/pcrit
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/crit
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/strafe
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/stap
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/jreset
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/shield
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/shieldcd
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 if score .slot23 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/next
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 store result score .slot21 has_item run data get entity @s Items[{Slot:21b}].count
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/refill
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/buffs
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/small
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/random
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/breakable
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/resistance
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/axe
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/healing
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 if score .slot21 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/mace/prev
execute if score .gui_detect gui_page matches 26 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 26 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 26 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 26 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot21 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot23 has_item 0
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 store result score .slot23 has_item run data get entity @s Items[{Slot:23b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/armor
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/playstyle
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/crystals
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/anchors
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/dbp
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/inf_tot
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/oldkb
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/better_npc_shield
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/shield
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/cobweb
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/stun
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/blocks_drop
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/holding
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/strafe
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/slowfall
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/refill
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/buffs
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/small
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 if score .slot23 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/next
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 store result score .slot21 has_item run data get entity @s Items[{Slot:21b}].count
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/breakable
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/resistance
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/axe
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/prompt_start
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/triple_tap
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 if score .slot21 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/crystal/prev
execute if score .gui_detect gui_page matches 27 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 27 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 27 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 27 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot21 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot23 has_item 0
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 store result score .slot23 has_item run data get entity @s Items[{Slot:23b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/armor
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/shield
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/resistance
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/breakable
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/no_fall
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/cobweb
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/stun
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/pcrit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/crit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/scrit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/strafe
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/stap
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/jreset
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/axe
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/refill
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/buffs
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/water
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/lava
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 if score .slot23 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/next
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 store result score .slot21 has_item run data get entity @s Items[{Slot:21b}].count
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/healing
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/small
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/random
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 if score .slot21 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/sword/prev
execute if score .gui_detect gui_page matches 28 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 28 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 28 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 28 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot22 has_item 0
execute if score .gui_detect gui_page matches 29 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 29 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 29 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/armor
execute if score .gui_detect gui_page matches 29 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/shield
execute if score .gui_detect gui_page matches 29 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/resistance
execute if score .gui_detect gui_page matches 29 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/breakable
execute if score .gui_detect gui_page matches 29 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/no_fall
execute if score .gui_detect gui_page matches 29 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/stun
execute if score .gui_detect gui_page matches 29 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/pcrit
execute if score .gui_detect gui_page matches 29 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/crit
execute if score .gui_detect gui_page matches 29 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/scrit
execute if score .gui_detect gui_page matches 29 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/strafe
execute if score .gui_detect gui_page matches 29 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/stap
execute if score .gui_detect gui_page matches 29 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/jreset
execute if score .gui_detect gui_page matches 29 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/axe
execute if score .gui_detect gui_page matches 29 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/refill
execute if score .gui_detect gui_page matches 29 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/buffs
execute if score .gui_detect gui_page matches 29 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/small
execute if score .gui_detect gui_page matches 29 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/pot/random
execute if score .gui_detect gui_page matches 29 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 29 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

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
scoreboard players set .slot10 has_item 0
scoreboard players set .slot11 has_item 0
scoreboard players set .slot12 has_item 0
scoreboard players set .slot13 has_item 0
scoreboard players set .slot14 has_item 0
scoreboard players set .slot15 has_item 0
scoreboard players set .slot16 has_item 0
scoreboard players set .slot17 has_item 0
scoreboard players set .slot18 has_item 0
scoreboard players set .slot21 has_item 0
scoreboard players set .slot22 has_item 0
scoreboard players set .slot23 has_item 0
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot3 has_item run data get entity @s Items[{Slot:3b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot4 has_item run data get entity @s Items[{Slot:4b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot5 has_item run data get entity @s Items[{Slot:5b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot6 has_item run data get entity @s Items[{Slot:6b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot7 has_item run data get entity @s Items[{Slot:7b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot8 has_item run data get entity @s Items[{Slot:8b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot9 has_item run data get entity @s Items[{Slot:9b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot10 has_item run data get entity @s Items[{Slot:10b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot11 has_item run data get entity @s Items[{Slot:11b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot12 has_item run data get entity @s Items[{Slot:12b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot13 has_item run data get entity @s Items[{Slot:13b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot14 has_item run data get entity @s Items[{Slot:14b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot15 has_item run data get entity @s Items[{Slot:15b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot16 has_item run data get entity @s Items[{Slot:16b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot17 has_item run data get entity @s Items[{Slot:17b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 store result score .slot23 has_item run data get entity @s Items[{Slot:23b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/armor
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/shield
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/resistance
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot3 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/breakable
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot4 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/no_fall
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot5 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/cobweb
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot6 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/stun
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot7 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/pcrit
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot8 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/crit
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot9 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/blocks_drop
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot10 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/strafe
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot11 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/stap
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot12 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/jreset
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot13 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/axe
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot14 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/refill
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot15 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/buffs
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot16 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/water
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot17 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/healing
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 if score .slot23 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/next
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 store result score .slot0 has_item run data get entity @s Items[{Slot:0b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 store result score .slot1 has_item run data get entity @s Items[{Slot:1b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 store result score .slot2 has_item run data get entity @s Items[{Slot:2b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 store result score .slot21 has_item run data get entity @s Items[{Slot:21b}].count
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 if score .slot0 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/prompt_start
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 if score .slot1 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/small
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 if score .slot2 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/random
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 if score .slot21 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:features/gamemode_settings/tnt/prev
execute if score .gui_detect gui_page matches 30 store result score .slot18 has_item run data get entity @s Items[{Slot:18b}].count
execute if score .gui_detect gui_page matches 30 store result score .slot22 has_item run data get entity @s Items[{Slot:22b}].count
execute if score .gui_detect gui_page matches 30 if score .slot18 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:ui/back
execute if score .gui_detect gui_page matches 30 if score .slot22 has_item matches 0 as @a[tag=gui_clicker,limit=1] run function gui:core/return_filler

