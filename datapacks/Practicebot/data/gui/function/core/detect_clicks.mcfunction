# GUI System — Click Detection
# Runs as each nearby player. Checks whether they have a GUI item in their
# inventory (meaning they just clicked/shift-clicked it out of the barrel).

# Main-page buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"play"}] run function gui:click/main/play
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"statistics"}] run function gui:click/main/statistics
execute if items entity @s inventory.* minecraft:gold_ingot[minecraft:custom_data~{gui_btn:"credits_support"}] run function gui:click/main/credits_support
execute if items entity @s inventory.* minecraft:redstone_torch[minecraft:custom_data~{gui_btn:"extra"}] run function gui:click/main/extra

# Play-page buttons
execute if items entity @s inventory.* minecraft:lime_wool[minecraft:custom_data~{gui_btn:"start"}] run function gui:click/main/start
# Play-page gamemode button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
# Play-page terrain button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:red_sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:mycelium[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:stone[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
# Play-page difficulty button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"settings"}] run function gui:click/settings/open

# Settings page buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"settings_npc"}] run function gui:click/settings/npc
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"settings_general"}] run function gui:click/settings/general
execute if items entity @s inventory.* minecraft:chain_command_block[minecraft:custom_data~{gui_btn:"settings_advanced"}] run function gui:click/settings/advanced

# Advanced Settings hub page (page 17) buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach"}] run function gui:click/advanced/reach
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset"}] run function gui:click/advanced/jreset
execute if items entity @s inventory.* minecraft:blaze_powder[minecraft:custom_data~{gui_btn:"advanced_aggro"}] run function gui:click/advanced/aggro
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap"}] run function gui:click/advanced/tap
execute if items entity @s inventory.* minecraft:comparator[minecraft:custom_data~{gui_btn:"advanced_ping"}] run function gui:click/advanced/ping

# Advanced Settings > Reach page (page 18) — 9 options
execute if items entity @s inventory.* minecraft:stick[minecraft:custom_data~{gui_btn:"advanced_reach_0"}] run function gui:click/advanced/reach/0
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_1"}] run function gui:click/advanced/reach/1
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_2"}] run function gui:click/advanced/reach/2
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_3"}] run function gui:click/advanced/reach/3
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_4"}] run function gui:click/advanced/reach/4
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_5"}] run function gui:click/advanced/reach/5
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_6"}] run function gui:click/advanced/reach/6
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_7"}] run function gui:click/advanced/reach/7
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_reach_8"}] run function gui:click/advanced/reach/8

# Advanced Settings > Jump Reset Chance page (page 19) — 10 options
# Slots 2,6-9 are all netherite_boots; distinguished by gui_btn value (+ trim on 2,7,8,9).
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_0"}] run function gui:click/advanced/jreset/0
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_1"}] run function gui:click/advanced/jreset/1
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_2"}] run function gui:click/advanced/jreset/2
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_3"}] run function gui:click/advanced/jreset/3
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_4"}] run function gui:click/advanced/jreset/4
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_5"}] run function gui:click/advanced/jreset/5
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_6"}] run function gui:click/advanced/jreset/6
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_7"}] run function gui:click/advanced/jreset/7
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_8"}] run function gui:click/advanced/jreset/8
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_jreset_9"}] run function gui:click/advanced/jreset/9

# Advanced Settings > Aggro Factor page (page 20) — 9 options
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"advanced_aggro_0"}] run function gui:click/advanced/aggro/0
execute if items entity @s inventory.* minecraft:blue_ice[minecraft:custom_data~{gui_btn:"advanced_aggro_1"}] run function gui:click/advanced/aggro/1
execute if items entity @s inventory.* minecraft:packed_ice[minecraft:custom_data~{gui_btn:"advanced_aggro_2"}] run function gui:click/advanced/aggro/2
execute if items entity @s inventory.* minecraft:ice[minecraft:custom_data~{gui_btn:"advanced_aggro_3"}] run function gui:click/advanced/aggro/3
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"advanced_aggro_4"}] run function gui:click/advanced/aggro/4
execute if items entity @s inventory.* minecraft:netherrack[minecraft:custom_data~{gui_btn:"advanced_aggro_5"}] run function gui:click/advanced/aggro/5
execute if items entity @s inventory.* minecraft:red_nether_bricks[minecraft:custom_data~{gui_btn:"advanced_aggro_6"}] run function gui:click/advanced/aggro/6
execute if items entity @s inventory.* minecraft:nether_bricks[minecraft:custom_data~{gui_btn:"advanced_aggro_7"}] run function gui:click/advanced/aggro/7
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"advanced_aggro_8"}] run function gui:click/advanced/aggro/8

# Advanced Settings > W & S-tap Chance page (page 21) — 10 options (colored bundles)
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_0"}] run function gui:click/advanced/tap/0
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_1"}] run function gui:click/advanced/tap/1
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_2"}] run function gui:click/advanced/tap/2
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_3"}] run function gui:click/advanced/tap/3
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_4"}] run function gui:click/advanced/tap/4
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_5"}] run function gui:click/advanced/tap/5
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_6"}] run function gui:click/advanced/tap/6
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_7"}] run function gui:click/advanced/tap/7
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_8"}] run function gui:click/advanced/tap/8
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"advanced_tap_9"}] run function gui:click/advanced/tap/9

# Advanced Settings > Bot Ping page (page 22) — 10 options (copper blocks)
execute if items entity @s inventory.* minecraft:cut_copper[minecraft:custom_data~{gui_btn:"advanced_ping_0"}] run function gui:click/advanced/ping/0
execute if items entity @s inventory.* minecraft:chiseled_copper[minecraft:custom_data~{gui_btn:"advanced_ping_1"}] run function gui:click/advanced/ping/1
execute if items entity @s inventory.* minecraft:copper_block[minecraft:custom_data~{gui_btn:"advanced_ping_2"}] run function gui:click/advanced/ping/2
execute if items entity @s inventory.* minecraft:exposed_copper[minecraft:custom_data~{gui_btn:"advanced_ping_3"}] run function gui:click/advanced/ping/3
execute if items entity @s inventory.* minecraft:exposed_copper_grate[minecraft:custom_data~{gui_btn:"advanced_ping_4"}] run function gui:click/advanced/ping/4
execute if items entity @s inventory.* minecraft:weathered_copper_grate[minecraft:custom_data~{gui_btn:"advanced_ping_5"}] run function gui:click/advanced/ping/5
execute if items entity @s inventory.* minecraft:weathered_copper[minecraft:custom_data~{gui_btn:"advanced_ping_6"}] run function gui:click/advanced/ping/6
execute if items entity @s inventory.* minecraft:oxidized_copper[minecraft:custom_data~{gui_btn:"advanced_ping_7"}] run function gui:click/advanced/ping/7
execute if items entity @s inventory.* minecraft:oxidized_chiseled_copper[minecraft:custom_data~{gui_btn:"advanced_ping_8"}] run function gui:click/advanced/ping/8
execute if items entity @s inventory.* minecraft:oxidized_cut_copper[minecraft:custom_data~{gui_btn:"advanced_ping_9"}] run function gui:click/advanced/ping/9

# NPC Settings page buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"npc_general_settings"}] run function gui:click/npc/general_settings
execute if items entity @s inventory.* minecraft:beacon[minecraft:custom_data~{gui_btn:"npc_attributes"}] run function gui:click/npc/attributes
execute if items entity @s inventory.* minecraft:book[minecraft:custom_data~{gui_btn:"npc_presets"}] run function gui:click/npc/presets
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"npc_tutorial"}] run function gui:click/npc/tutorial

# Armor page buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_leather"}] run function gui:click/armor/leather
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_chainmail"}] run function gui:click/armor/chainmail
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_iron"}] run function gui:click/armor/iron
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_diamond"}] run function gui:click/armor/diamond
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_netherite"}] run function gui:click/armor/netherite
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_dbp"}] run function gui:click/armor/dbp
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"armor_sbp"}] run function gui:click/armor/sbp
execute if items entity @s inventory.* minecraft:barrier[minecraft:custom_data~{gui_btn:"armor_prot"}] run function gui:click/armor/prot

# Presets page buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"preset_sword"}] run function gui:click/preset/sword
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"preset_crystal"}] run function gui:click/preset/crystal
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"preset_mace"}] run function gui:click/preset/mace

# Sub-page back button
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"back"}] run function gui:click/main/back

# Gamemode page buttons
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode_tnt_cart"}] run function gui:click/gamemode/tnt_cart
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"gamemode_pot"}] run function gui:click/gamemode/pot
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"gamemode_mace"}] run function gui:click/gamemode/mace
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode_vanilla"}] run function gui:click/gamemode/vanilla
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"gamemode_op_sword"}] run function gui:click/gamemode/op_sword

# Terrain page buttons
# Flat Terrain toggle button (smooth_stone icon). Toggle state lives in
# the .flat_terrain toggles scoreboard -- see pages/terrain.mcfunction.
execute if items entity @s inventory.* minecraft:smooth_stone[minecraft:custom_data~{gui_btn:"terrain_flat"}] run function gui:click/terrain/flat
execute if items entity @s inventory.* minecraft:red_sand[minecraft:custom_data~{gui_btn:"terrain_badlands"}] run function gui:click/terrain/badlands
execute if items entity @s inventory.* minecraft:sand[minecraft:custom_data~{gui_btn:"terrain_desert"}] run function gui:click/terrain/desert
execute if items entity @s inventory.* minecraft:stone[minecraft:custom_data~{gui_btn:"terrain_cave"}] run function gui:click/terrain/cave
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain_plains"}] run function gui:click/terrain/plains
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"terrain_snowy_plains"}] run function gui:click/terrain/snowy_plains
execute if items entity @s inventory.* minecraft:mycelium[minecraft:custom_data~{gui_btn:"terrain_mushroom"}] run function gui:click/terrain/mushroom
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"terrain_netherite"}] run function gui:click/terrain/netherite

# Difficulty page buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"difficulty_npc"}] run function gui:click/difficulty/npc
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty_easy"}] run function gui:click/difficulty/easy
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty_medium"}] run function gui:click/difficulty/medium
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty_hard"}] run function gui:click/difficulty/hard
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty_crazy"}] run function gui:click/difficulty/crazy
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"difficulty_master"}] run function gui:click/difficulty/master

# Mech Training button (play page)
execute if items entity @s inventory.* minecraft:diamond[minecraft:custom_data~{gui_btn:"mech_training"}] run function gui:click/mech/training

# NPC General Settings page (page 12) toggle buttons
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_shield"}] run function gui:click/npc_gs/shield
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_better_shield"}] run function gui:click/npc_gs/better_shield
execute if items entity @s inventory.* minecraft:firework_rocket[minecraft:custom_data~{gui_btn:"npc_gs_auto_wind"}] run function gui:click/npc_gs/auto_wind
execute if items entity @s inventory.* minecraft:phantom_membrane[minecraft:custom_data~{gui_btn:"npc_gs_bot_sf"}] run function gui:click/npc_gs/bot_sf
execute if items entity @s inventory.* minecraft:cobweb[minecraft:custom_data~{gui_btn:"npc_gs_sf"}] run function gui:click/npc_gs/sf
execute if items entity @s inventory.* minecraft:slime_block[minecraft:custom_data~{gui_btn:"npc_gs_airborne_sf"}] run function gui:click/npc_gs/airborne_sf
execute if items entity @s inventory.* minecraft:compass[minecraft:custom_data~{gui_btn:"npc_gs_display_shield_dura"}] run function gui:click/npc_gs/display_shield_dura
execute if items entity @s inventory.* minecraft:honey_block[minecraft:custom_data~{gui_btn:"npc_gs_falldmg"}] run function gui:click/npc_gs/falldmg
execute if items entity @s inventory.* minecraft:ender_pearl[minecraft:custom_data~{gui_btn:"npc_gs_far_pearl"}] run function gui:click/npc_gs/far_pearl
execute if items entity @s inventory.* minecraft:clock[minecraft:custom_data~{gui_btn:"npc_gs_insta_shieldcd"}] run function gui:click/npc_gs/insta_shieldcd
execute if items entity @s inventory.* minecraft:rabbit_foot[minecraft:custom_data~{gui_btn:"npc_gs_jreset"}] run function gui:click/npc_gs/jreset
execute if items entity @s inventory.* minecraft:ender_eye[minecraft:custom_data~{gui_btn:"npc_gs_no_pearl_land"}] run function gui:click/npc_gs/no_pearl_land
execute if items entity @s inventory.* minecraft:firework_star[minecraft:custom_data~{gui_btn:"npc_gs_pflash"}] run function gui:click/npc_gs/pflash
execute if items entity @s inventory.* minecraft:water_bucket[minecraft:custom_data~{gui_btn:"npc_gs_rain"}] run function gui:click/npc_gs/rain
execute if items entity @s inventory.* minecraft:chest[minecraft:custom_data~{gui_btn:"npc_gs_refill"}] run function gui:click/npc_gs/refill
execute if items entity @s inventory.* minecraft:fire_charge[minecraft:custom_data~{gui_btn:"npc_gs_simfire"}] run function gui:click/npc_gs/simfire
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_strafe"}] run function gui:click/npc_gs/strafe
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_strafe_fb"}] run function gui:click/npc_gs/strafe_fb
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_stun"}] run function gui:click/npc_gs/stun
execute if items entity @s inventory.* minecraft:golden_apple[minecraft:custom_data~{gui_btn:"npc_gs_uhc"}] run function gui:click/npc_gs/uhc
execute if items entity @s inventory.* minecraft:wind_charge[minecraft:custom_data~{gui_btn:"npc_gs_wind_pearl"}] run function gui:click/npc_gs/wind_pearl
execute if items entity @s inventory.* minecraft:breeze_rod[minecraft:custom_data~{gui_btn:"npc_gs_wind"}] run function gui:click/npc_gs/wind
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_gs_move_forward"}] run function gui:click/npc_gs/move_forward
# NPC General Settings page navigation arrows
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"npc_gs_prev"}] run function gui:click/npc_gs/prev
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"npc_gs_next"}] run function gui:click/npc_gs/next
# NPC General Settings nether star (display only — clear from inventory)
execute if items entity @s inventory.* minecraft:nether_star[minecraft:custom_data~{gui_btn:"npc_gs_pageinfo"}] run function gui:core/return_filler

# Mace General Settings page (page 26) toggle buttons (page 1: slots 0-17)
execute if items entity @s inventory.* minecraft:hay_block[minecraft:custom_data~{gui_btn:"mace_gs_no_fall"}] run function gui:click/mace_gs/no_fall
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_stun"}] run function gui:click/mace_gs/stun
execute if items entity @s inventory.* minecraft:cauldron[minecraft:custom_data~{gui_btn:"mace_gs_refill"}] run function gui:click/mace_gs/refill
execute if items entity @s inventory.* minecraft:cactus[minecraft:custom_data~{gui_btn:"mace_gs_pcrit"}] run function gui:click/mace_gs/pcrit
execute if items entity @s inventory.* minecraft:cobweb[minecraft:custom_data~{gui_btn:"mace_gs_cobweb"}] run function gui:click/mace_gs/cobweb
execute if items entity @s inventory.* minecraft:turtle_egg[minecraft:custom_data~{gui_btn:"mace_gs_small"}] run function gui:click/mace_gs/small
execute if items entity @s inventory.* minecraft:fire_charge[minecraft:custom_data~{gui_btn:"mace_gs_crit"}] run function gui:click/mace_gs/crit
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_buffs"}] run function gui:click/mace_gs/buffs
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_shield"}] run function gui:click/mace_gs/shield
execute if items entity @s inventory.* minecraft:wind_charge[minecraft:custom_data~{gui_btn:"mace_gs_wind_pearl"}] run function gui:click/mace_gs/wind_pearl
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_elytra"}] run function gui:click/mace_gs/elytra
execute if items entity @s inventory.* minecraft:magenta_glazed_terracotta[minecraft:custom_data~{gui_btn:"mace_gs_strafe"}] run function gui:click/mace_gs/strafe
execute if items entity @s inventory.* minecraft:chorus_fruit[minecraft:custom_data~{gui_btn:"mace_gs_random"}] run function gui:click/mace_gs/random
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_spear"}] run function gui:click/mace_gs/spear
execute if items entity @s inventory.* minecraft:ender_pearl[minecraft:custom_data~{gui_btn:"mace_gs_far_pearl"}] run function gui:click/mace_gs/far_pearl
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_breakable"}] run function gui:click/mace_gs/breakable
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_resistance"}] run function gui:click/mace_gs/resistance
execute if items entity @s inventory.* minecraft:water_bucket[minecraft:custom_data~{gui_btn:"mace_gs_water"}] run function gui:click/mace_gs/water
# Mace General Settings page (page 26) toggle buttons (page 2: slots 0-5)
execute if items entity @s inventory.* minecraft:slime_block[minecraft:custom_data~{gui_btn:"mace_gs_jreset"}] run function gui:click/mace_gs/jreset
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_axe"}] run function gui:click/mace_gs/axe
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_breach"}] run function gui:click/mace_gs/breach
execute if items entity @s inventory.* minecraft:ender_eye[minecraft:custom_data~{gui_btn:"mace_gs_no_pearl_land"}] run function gui:click/mace_gs/no_pearl_land
execute if items entity @s inventory.* minecraft:minecart[minecraft:custom_data~{gui_btn:"mace_gs_stap"}] run function gui:click/mace_gs/stap
execute if items entity @s inventory.* minecraft:clock[minecraft:custom_data~{gui_btn:"mace_gs_shieldcd"}] run function gui:click/mace_gs/shieldcd
# Mace General Settings armor toggle (page 2, slot 6) — gold_nugget+item_model
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"mace_gs_armor"}] run function gui:click/mace_gs/armor
# Mace General Settings page navigation arrows
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"mace_gs_prev"}] run function gui:click/mace_gs/prev
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"mace_gs_next"}] run function gui:click/mace_gs/next
# Mace General Settings nether star (display only — clear from inventory)
execute if items entity @s inventory.* minecraft:nether_star[minecraft:custom_data~{gui_btn:"mace_gs_pageinfo"}] run function gui:core/return_filler

# Crystal General Settings page (page 27) toggle buttons (page 1: slots 0-17)
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_stun"}] run function gui:click/crystal_gs/stun
execute if items entity @s inventory.* minecraft:magenta_glazed_terracotta[minecraft:custom_data~{gui_btn:"crystal_gs_strafe"}] run function gui:click/crystal_gs/strafe
execute if items entity @s inventory.* minecraft:campfire[minecraft:custom_data~{gui_btn:"crystal_gs_blocks_drop"}] run function gui:click/crystal_gs/blocks_drop
execute if items entity @s inventory.* minecraft:cauldron[minecraft:custom_data~{gui_btn:"crystal_gs_refill"}] run function gui:click/crystal_gs/refill
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_axe"}] run function gui:click/crystal_gs/axe
execute if items entity @s inventory.* minecraft:turtle_egg[minecraft:custom_data~{gui_btn:"crystal_gs_small"}] run function gui:click/crystal_gs/small
execute if items entity @s inventory.* minecraft:cobweb[minecraft:custom_data~{gui_btn:"crystal_gs_cobweb"}] run function gui:click/crystal_gs/cobweb
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_buffs"}] run function gui:click/crystal_gs/buffs
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_shield"}] run function gui:click/crystal_gs/shield
execute if items entity @s inventory.* minecraft:iron_chain[minecraft:custom_data~{gui_btn:"crystal_gs_holding"}] run function gui:click/crystal_gs/holding
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"crystal_gs_slowfall"}] run function gui:click/crystal_gs/slowfall
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"crystal_gs_crystals"}] run function gui:click/crystal_gs/crystals
execute if items entity @s inventory.* minecraft:respawn_anchor[minecraft:custom_data~{gui_btn:"crystal_gs_anchors"}] run function gui:click/crystal_gs/anchors
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_better_npc_shield"}] run function gui:click/crystal_gs/better_npc_shield
# Playstyle toggle (slot 14): icon can be either end_crystal OR respawn_anchor
# depending on which playstyle is currently selected, so check both item ids.
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"crystal_gs_playstyle"}] run function gui:click/crystal_gs/playstyle
execute if items entity @s inventory.* minecraft:respawn_anchor[minecraft:custom_data~{gui_btn:"crystal_gs_playstyle"}] run function gui:click/crystal_gs/playstyle
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_dbp"}] run function gui:click/crystal_gs/dbp
execute if items entity @s inventory.* minecraft:totem_of_undying[minecraft:custom_data~{gui_btn:"crystal_gs_inf_tot"}] run function gui:click/crystal_gs/inf_tot
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_oldkb"}] run function gui:click/crystal_gs/oldkb
# Crystal General Settings page (page 27) toggle buttons (page 2: slots 0-3)
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_breakable"}] run function gui:click/crystal_gs/breakable
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_resistance"}] run function gui:click/crystal_gs/resistance
execute if items entity @s inventory.* minecraft:egg[minecraft:custom_data~{gui_btn:"crystal_gs_prompt_start"}] run function gui:click/crystal_gs/prompt_start
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_triple_tap"}] run function gui:click/crystal_gs/triple_tap
# Crystal General Settings armor toggle (page 2, slot 4) — gold_nugget+item_model
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"crystal_gs_armor"}] run function gui:click/crystal_gs/armor
# Crystal General Settings page navigation arrows
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"crystal_gs_prev"}] run function gui:click/crystal_gs/prev
execute if items entity @s inventory.* minecraft:arrow[minecraft:custom_data~{gui_btn:"crystal_gs_next"}] run function gui:click/crystal_gs/next
# Crystal General Settings nether star (display only — clear from inventory)
execute if items entity @s inventory.* minecraft:nether_star[minecraft:custom_data~{gui_btn:"crystal_gs_pageinfo"}] run function gui:core/return_filler

# NPC Attributes page (page 13) setting buttons
execute if items entity @s inventory.* minecraft:skeleton_skull[minecraft:custom_data~{gui_btn:"npc_attr_bot_scale"}] run function gui:click/npc_attr/bot_scale
execute if items entity @s inventory.* minecraft:fermented_spider_eye[minecraft:custom_data~{gui_btn:"npc_attr_bot_slowness"}] run function gui:click/npc_attr/bot_slowness
execute if items entity @s inventory.* minecraft:sugar[minecraft:custom_data~{gui_btn:"npc_attr_bot_speed"}] run function gui:click/npc_attr/bot_speed
execute if items entity @s inventory.* minecraft:slime_ball[minecraft:custom_data~{gui_btn:"npc_attr_jump_boost"}] run function gui:click/npc_attr/jump_boost
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_attr_reach"}] run function gui:click/npc_attr/reach
execute if items entity @s inventory.* minecraft:repeater[minecraft:custom_data~{gui_btn:"npc_attr_react"}] run function gui:click/npc_attr/react
execute if items entity @s inventory.* minecraft:armor_stand[minecraft:custom_data~{gui_btn:"npc_attr_scale"}] run function gui:click/npc_attr/scale
execute if items entity @s inventory.* minecraft:soul_sand[minecraft:custom_data~{gui_btn:"npc_attr_slowness"}] run function gui:click/npc_attr/slowness
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"npc_attr_speed"}] run function gui:click/npc_attr/speed
execute if items entity @s inventory.* minecraft:blaze_powder[minecraft:custom_data~{gui_btn:"npc_attr_strength"}] run function gui:click/npc_attr/strength
# NPC Attributes page mode wool (both variants)
execute if items entity @s inventory.* minecraft:lime_wool[minecraft:custom_data~{gui_btn:"npc_attr_mode"}] run function gui:click/npc_attr/mode
execute if items entity @s inventory.* minecraft:red_wool[minecraft:custom_data~{gui_btn:"npc_attr_mode"}] run function gui:click/npc_attr/mode
# NPC Attributes page reset-to-defaults button (slot 26)
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"npc_attr_reset"}] run function gui:click/npc_attr/reset
# Extra page (page 14) buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"extra_ai"}] run function gui:click/extra/ai
execute if items entity @s inventory.* minecraft:gold_nugget[minecraft:custom_data~{gui_btn:"extra_optimize"}] run function gui:click/extra/optimize
execute if items entity @s inventory.* minecraft:end_portal_frame[minecraft:custom_data~{gui_btn:"extra_teleports"}] run function gui:click/extra/teleports
execute if items entity @s inventory.* minecraft:jukebox[minecraft:custom_data~{gui_btn:"extra_music"}] run function gui:click/extra/music
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"extra_bots"}] run function gui:click/extra/bots
# Music page (page 25) buttons
execute if items entity @s inventory.* minecraft:music_disc_13[minecraft:custom_data~{gui_btn:"music_undertale"}] run function gui:click/music/undertale
execute if items entity @s inventory.* minecraft:music_disc_otherside[minecraft:custom_data~{gui_btn:"music_otherside"}] run function gui:click/music/otherside
# Multiple Bots page (page 15) buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"bots_quantum"}] run function gui:click/bots/quantum
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"bots_herobrine"}] run function gui:click/bots/herobrine
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"bots_notch"}] run function gui:click/bots/notch
# Teleports page (page 16) buttons
execute if items entity @s inventory.* minecraft:compass[minecraft:custom_data~{gui_btn:"tp_hub"}] run function gui:click/tp/hub
execute if items entity @s inventory.* minecraft:nether_star[minecraft:custom_data~{gui_btn:"tp_advanced"}] run function gui:click/tp/advanced
execute if items entity @s inventory.* minecraft:chest[minecraft:custom_data~{gui_btn:"tp_kitroom"}] run function gui:click/tp/kitroom
# Support & Credits page (page 23) buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"credits_discord"}] run function gui:click/credits/discord
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"credits_people"}] run function gui:click/credits/people
# Important People page (page 24) buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"credits_person"}] run function gui:core/return_filler
# Filler cleanup
# If a player accidentally takes a filler, remove it and refresh the barrel.
execute if items entity @s inventory.* minecraft:gray_stained_glass_pane[minecraft:custom_data~{gui_btn:"filler"}] run function gui:core/return_filler
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"filler"}] run function gui:core/return_filler
