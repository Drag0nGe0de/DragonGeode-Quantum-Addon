
scoreboard players operation .gui_detect gui_page = .gui gui_page

execute if score .gui_detect gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/main/play
execute if score .gui_detect gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/main/statistics
execute if score .gui_detect gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/main/credits_support
execute if score .gui_detect gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:26b}] run function gui:features/main/extra

execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/mech/training
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/play/start
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode/open
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/terrain/open
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/difficulty/open
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/settings/open
execute if score .gui_detect gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode/tnt_cart
execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode/pot
execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode/mace
execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode/vanilla
execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode/op_sword
execute if score .gui_detect gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/terrain/flat
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/terrain/badlands
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/terrain/desert
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/terrain/cave
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/terrain/plains
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/terrain/snowy_plains
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/terrain/mushroom
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/terrain/netherite
execute if score .gui_detect gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/difficulty/npc
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/difficulty/easy
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/difficulty/medium
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/difficulty/hard
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/difficulty/crazy
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/difficulty/master
execute if score .gui_detect gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 7 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/mech/cart_neg3

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/mech/cart_neg2

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/cart_neg1
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/mace_far_pearl
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/crystal_dtap

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/cart_0
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/mace_stun_slam
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/crystal_ledge

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/cart_1
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/mace_divebomb
execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/crystal_hit_anchor

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/mech/cart_2

execute if score .gui_detect gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/mech/cart_3

execute if score .gui_detect gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/settings/npc
execute if score .gui_detect gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/settings/general
execute if score .gui_detect gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/settings/advanced
execute if score .gui_detect gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/npc/settings/armor
execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/npc/settings/general_settings
execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/npc/settings/attributes
execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/npc/settings/presets
execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/npc/settings/tutorial
execute if score .gui_detect gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/armor/dbp
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/armor/sbp
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/armor/prot
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/armor/leather
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/armor/chainmail
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/armor/iron
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/armor/diamond
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/armor/netherite
execute if score .gui_detect gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/presets/sword
execute if score .gui_detect gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/presets/crystal
execute if score .gui_detect gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/presets/mace
execute if score .gui_detect gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back


execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/general_settings/shield
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/general_settings/better_shield
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/general_settings/auto_wind
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/general_settings/bot_sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/general_settings/sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/npc/general_settings/airborne_sf
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/npc/general_settings/display_shield_dura
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/npc/general_settings/falldmg
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/npc/general_settings/far_pearl
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/npc/general_settings/insta_shieldcd
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/npc/general_settings/jreset
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/npc/general_settings/no_pearl_land
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/npc/general_settings/pflash
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/npc/general_settings/rain
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/npc/general_settings/refill
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/npc/general_settings/simfire
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/npc/general_settings/strafe
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/npc/general_settings/strafe_fb
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/npc/general_settings/next

execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/general_settings/stun
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/general_settings/uhc
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/general_settings/wind_pearl
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/general_settings/wind
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/general_settings/move_forward
execute if score .gui_detect gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/npc/general_settings/prev

execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/attributes/bot_scale
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/attributes/bot_slowness
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/attributes/bot_speed
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/attributes/jump_boost
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/attributes/reach
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/npc/attributes/react
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/npc/attributes/scale
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/npc/attributes/slowness
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/npc/attributes/speed
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/npc/attributes/strength
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:22b}] run function gui:features/npc/attributes/mode
execute if score .gui_detect gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:26b}] run function gui:features/npc/attributes/reset

execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/extra/ai
execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/extra/optimize
execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/extra/teleports
execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/extra/music
execute if score .gui_detect gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/extra/bots

execute if score .gui_detect gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/bots/quantum
execute if score .gui_detect gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/bots/herobrine
execute if score .gui_detect gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/bots/notch

execute if score .gui_detect gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/teleports/hub
execute if score .gui_detect gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/teleports/advanced
execute if score .gui_detect gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/teleports/kitroom

execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/reach/open
execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/jreset/open
execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/aggro/open
execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/tap/open
execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/ping/open
execute if score .gui_detect gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/advanced/reach/0
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/advanced/reach/1
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/reach/2
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/reach/3
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/reach/4
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/reach/5
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/reach/6
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/advanced/reach/7
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/advanced/reach/8
execute if score .gui_detect gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/jreset/0
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/jreset/1
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/jreset/2
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/jreset/3
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/jreset/4
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/jreset/5
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/jreset/6
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/jreset/7
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/jreset/8
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/jreset/9
execute if score .gui_detect gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/advanced/aggro/0
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/advanced/aggro/1
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/aggro/2
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/aggro/3
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/aggro/4
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/aggro/5
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/aggro/6
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/advanced/aggro/7
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/advanced/aggro/8
execute if score .gui_detect gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/tap/0
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/tap/1
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/tap/2
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/tap/3
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/tap/4
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/tap/5
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/tap/6
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/tap/7
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/tap/8
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/tap/9
execute if score .gui_detect gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/ping/0
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/ping/1
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/ping/2
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/ping/3
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/ping/4
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/ping/5
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/ping/6
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/ping/7
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/ping/8
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/ping/9
execute if score .gui_detect gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/credits/discord
execute if score .gui_detect gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/credits/open_people
execute if score .gui_detect gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:core/return_filler
execute if score .gui_detect gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/music/undertale
execute if score .gui_detect gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/music/otherside
execute if score .gui_detect gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/mace/armor
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/mace/breach
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/mace/spear
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/mace/wind_pearl
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/mace/elytra
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/mace/far_pearl
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/mace/no_pearl_land
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/mace/cobweb
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/mace/water
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/mace/no_fall
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/mace/stun
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/mace/pcrit
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/mace/crit
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/mace/strafe
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/mace/stap
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/mace/jreset
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/mace/shield
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/mace/shieldcd
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/mace/next

execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/mace/refill
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/mace/buffs
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/mace/small
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/mace/random
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/mace/breakable
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/mace/resistance
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/mace/axe
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/mace/healing
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/mace/prev

execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/crystal/armor
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/crystal/playstyle
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/crystal/crystals
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/crystal/anchors
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/crystal/dbp
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/crystal/inf_tot
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/crystal/oldkb
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/crystal/better_npc_shield
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/crystal/shield
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/crystal/cobweb
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/crystal/stun
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/crystal/blocks_drop
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/crystal/holding
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/crystal/strafe
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/crystal/slowfall
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/crystal/refill
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/crystal/buffs
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/crystal/small
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/crystal/next

execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/crystal/breakable
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/crystal/resistance
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/crystal/axe
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/crystal/prompt_start
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/crystal/triple_tap
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/crystal/prev

execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/sword/armor
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/sword/shield
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/sword/resistance
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/sword/breakable
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/sword/no_fall
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/sword/cobweb
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/sword/stun
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/sword/pcrit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/sword/crit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/sword/scrit
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/sword/strafe
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/sword/stap
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/sword/jreset
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/sword/axe
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/sword/refill
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/sword/buffs
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/sword/water
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/sword/lava
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/sword/next

execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/sword/healing
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/sword/small
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/sword/random
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/sword/prev

execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/pot/armor
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/pot/shield
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/pot/resistance
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/pot/breakable
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/pot/no_fall
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/pot/stun
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/pot/pcrit
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/pot/crit
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/pot/scrit
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/pot/strafe
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/pot/stap
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/pot/jreset
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/pot/axe
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/pot/refill
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/pot/buffs
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/pot/small
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/pot/random
execute if score .gui_detect gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/tnt/armor
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/tnt/shield
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/tnt/resistance
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/tnt/breakable
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/tnt/no_fall
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/tnt/cobweb
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/tnt/stun
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/tnt/pcrit
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/tnt/crit
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/tnt/blocks_drop
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/tnt/strafe
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/tnt/stap
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/tnt/jreset
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/tnt/axe
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/tnt/refill
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/tnt/buffs
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/tnt/water
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/tnt/healing
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/tnt/next

execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/tnt/prompt_start
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/tnt/small
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/tnt/random
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui_detect gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/tnt/prev