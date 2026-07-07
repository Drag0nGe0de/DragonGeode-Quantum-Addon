# GUI System — Tick
# Runs every game tick via minecraft:tick tag.
# Supports 5 barrels: -715 31 90 (main), -683 31 90, -651 31 90, -619 31 90, -619 31 134

# Repair any GUI barrel when a player is nearby.
# Handles reloads where the score was set but the chunk/barrel wasn't ready.
# Also checks for empty barrels (barrel exists but slot 12 has no item = needs fill).
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -715 31 90 minecraft:barrel run function gui:core/setup
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -683 31 90 minecraft:barrel run function gui:core/setup
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -651 31 90 minecraft:barrel run function gui:core/setup
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -619 31 90 minecraft:barrel run function gui:core/setup
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] unless block -619 31 134 minecraft:barrel run function gui:core/setup
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if block -715 31 90 minecraft:barrel unless score .gui gui_page matches 1..24 run function gui:core/setup
# Empty-barrel safety: if the main barrel exists but its Items list is completely
# empty, the barrel needs to be (re)filled. This catches the case where the barrel
# block survived from a previous session but its Items were wiped.
# NOTE: do NOT check a single slot (e.g. Items[{Slot:12b}]) here. Slot 12 is the
# Play button on the main page (and other buttons on other pages); when a player
# clicks it the slot is briefly empty, and a per-slot check would race ahead of
# detect_at (called below) and re-run setup -> gui:pages/main, refilling slot 12
# before detect_at could observe the empty slot and route the click to
# gui:click/main/play. Checking the whole Items list (Items[]) only triggers when
# the barrel is truly wiped, not on every normal click.
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if block -715 31 90 minecraft:barrel unless data block -715 31 90 Items[] run function gui:core/setup

# Initialize bot reach to 28 (2.8 blocks) if not already set to a valid value.
# This runs every tick but only sets the score when the bot's reach is unset (0),
# so it's effectively a one-time init that catches the bot whenever it spawns.
# Without this, the bot's reach defaults to 0 which breaks distance checks.
scoreboard players set .adv_reach var 0
execute store result score .adv_reach var run scoreboard players get @a[tag=xlib_bot,limit=1] reach
execute unless score .adv_reach var matches 1..255 run scoreboard players set @a[tag=xlib_bot] reach 28

# Clear any GUI items from all players' inventories (not just nearby).
# Items have gui_btn/gui_cat tags so this won't affect normal items.
# Cursor items can't be cleared — they're cleaned up when the barrel refreshes.
clear @a minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @a minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"play"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:writable_book[minecraft:custom_data={gui_btn:"statistics"}]
clear @a minecraft:gold_ingot[minecraft:custom_data={gui_btn:"credits_support"}]
clear @a minecraft:redstone_torch[minecraft:custom_data={gui_btn:"extra"}]
clear @a minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]
clear @a minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:mycelium[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:snow_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:stone[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:netherite_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:command_block[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:command_block[minecraft:custom_data={gui_btn:"settings"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"settings_npc"}]
clear @a minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"settings_general"}]
clear @a minecraft:chain_command_block[minecraft:custom_data={gui_btn:"settings_advanced"}]
# NPC Settings page (page 9) items
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_armor"}]
clear @a minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"npc_general_settings"}]
clear @a minecraft:beacon[minecraft:custom_data={gui_btn:"npc_attributes"}]
clear @a minecraft:book[minecraft:custom_data={gui_btn:"npc_presets"}]
clear @a minecraft:writable_book[minecraft:custom_data={gui_btn:"npc_tutorial"}]
# Armor page (page 10) items
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_leather"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_chainmail"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_iron"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_diamond"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_netherite"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_dbp"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_sbp"}]
clear @a minecraft:barrier[minecraft:custom_data={gui_btn:"armor_prot"}]
# Presets page (page 11) items
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"preset_sword"}]
clear @a minecraft:end_crystal[minecraft:custom_data={gui_btn:"preset_crystal"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"preset_mace"}]
clear @a minecraft:feather[minecraft:custom_data={gui_btn:"back"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode_tnt_cart"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode_pot"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode_mace"}]
clear @a minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode_vanilla"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"gamemode_op_sword"}]
clear @a minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain_badlands"}]
clear @a minecraft:sand[minecraft:custom_data={gui_btn:"terrain_desert"}]
clear @a minecraft:stone[minecraft:custom_data={gui_btn:"terrain_cave"}]
clear @a minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain_plains"}]
clear @a minecraft:snow_block[minecraft:custom_data={gui_btn:"terrain_snowy_plains"}]
clear @a minecraft:mycelium[minecraft:custom_data={gui_btn:"terrain_mushroom"}]
clear @a minecraft:netherite_block[minecraft:custom_data={gui_btn:"terrain_netherite"}]
# Flat Terrain toggle button (terrain page, slot 4) -- smooth_stone icon
clear @a minecraft:smooth_stone[minecraft:custom_data={gui_btn:"terrain_flat"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty_npc"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_easy"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_medium"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_hard"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_crazy"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_master"}]
clear @a minecraft:diamond[minecraft:custom_data={gui_btn:"mech_training"}]
clear @a minecraft:end_crystal[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:obsidian[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:respawn_anchor[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:ender_pearl[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:gold_nugget[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:firework_rocket[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data~{gui_cat:"mech"}]

# NPC General Settings page (page 12) toggle buttons
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_shield"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_better_shield"}]
clear @a minecraft:firework_rocket[minecraft:custom_data={gui_btn:"npc_gs_auto_wind"}]
clear @a minecraft:phantom_membrane[minecraft:custom_data={gui_btn:"npc_gs_bot_sf"}]
clear @a minecraft:cobweb[minecraft:custom_data={gui_btn:"npc_gs_sf"}]
clear @a minecraft:slime_block[minecraft:custom_data={gui_btn:"npc_gs_airborne_sf"}]
clear @a minecraft:compass[minecraft:custom_data={gui_btn:"npc_gs_display_shield_dura"}]
clear @a minecraft:honey_block[minecraft:custom_data={gui_btn:"npc_gs_falldmg"}]
clear @a minecraft:ender_pearl[minecraft:custom_data={gui_btn:"npc_gs_far_pearl"}]
clear @a minecraft:clock[minecraft:custom_data={gui_btn:"npc_gs_insta_shieldcd"}]
clear @a minecraft:rabbit_foot[minecraft:custom_data={gui_btn:"npc_gs_jreset"}]
clear @a minecraft:ender_eye[minecraft:custom_data={gui_btn:"npc_gs_no_pearl_land"}]
clear @a minecraft:firework_star[minecraft:custom_data={gui_btn:"npc_gs_pflash"}]
clear @a minecraft:water_bucket[minecraft:custom_data={gui_btn:"npc_gs_rain"}]
clear @a minecraft:chest[minecraft:custom_data={gui_btn:"npc_gs_refill"}]
clear @a minecraft:fire_charge[minecraft:custom_data={gui_btn:"npc_gs_simfire"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_strafe"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_strafe_fb"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_stun"}]
clear @a minecraft:golden_apple[minecraft:custom_data={gui_btn:"npc_gs_uhc"}]
clear @a minecraft:wind_charge[minecraft:custom_data={gui_btn:"npc_gs_wind_pearl"}]
clear @a minecraft:breeze_rod[minecraft:custom_data={gui_btn:"npc_gs_wind"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_move_forward"}]
# NPC General Settings page navigation
clear @a minecraft:arrow[minecraft:custom_data={gui_btn:"npc_gs_prev"}]
clear @a minecraft:arrow[minecraft:custom_data={gui_btn:"npc_gs_next"}]
clear @a minecraft:nether_star[minecraft:custom_data={gui_btn:"npc_gs_pageinfo"}]

# NPC Attributes page (page 13) setting buttons
clear @a minecraft:skeleton_skull[minecraft:custom_data={gui_btn:"npc_attr_bot_scale"}]
clear @a minecraft:fermented_spider_eye[minecraft:custom_data={gui_btn:"npc_attr_bot_slowness"}]
clear @a minecraft:sugar[minecraft:custom_data={gui_btn:"npc_attr_bot_speed"}]
clear @a minecraft:slime_ball[minecraft:custom_data={gui_btn:"npc_attr_jump_boost"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_attr_reach"}]
clear @a minecraft:repeater[minecraft:custom_data={gui_btn:"npc_attr_react"}]
clear @a minecraft:armor_stand[minecraft:custom_data={gui_btn:"npc_attr_scale"}]
clear @a minecraft:soul_sand[minecraft:custom_data={gui_btn:"npc_attr_slowness"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_attr_speed"}]
clear @a minecraft:blaze_powder[minecraft:custom_data={gui_btn:"npc_attr_strength"}]
# NPC Attributes page mode wool (both variants)
clear @a minecraft:lime_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
clear @a minecraft:red_wool[minecraft:custom_data={gui_btn:"npc_attr_mode"}]
# NPC Attributes page reset-to-defaults button (slot 26)
clear @a minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"npc_attr_reset"}]
# Extra page (page 14) buttons
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"extra_ai"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"extra_optimize"}]
clear @a minecraft:end_portal_frame[minecraft:custom_data={gui_btn:"extra_teleports"}]
clear @a minecraft:jukebox[minecraft:custom_data={gui_btn:"extra_music"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"extra_bots"}]
# Multiple Bots page (page 15) buttons
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"bots_quantum"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"bots_herobrine"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"bots_notch"}]
# Teleports page (page 16) buttons
clear @a minecraft:compass[minecraft:custom_data={gui_btn:"tp_hub"}]
clear @a minecraft:nether_star[minecraft:custom_data={gui_btn:"tp_advanced"}]
clear @a minecraft:chest[minecraft:custom_data={gui_btn:"tp_kitroom"}]
# Advanced Settings hub page (page 17) buttons
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset"}]
clear @a minecraft:blaze_powder[minecraft:custom_data={gui_btn:"advanced_aggro"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap"}]
clear @a minecraft:comparator[minecraft:custom_data={gui_btn:"advanced_ping"}]
# Advanced Settings > Reach page (page 18) options
clear @a minecraft:stick[minecraft:custom_data={gui_btn:"advanced_reach_0"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_1"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_2"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_3"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_4"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_5"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_6"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_7"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_8"}]
# Advanced Settings > Jump Reset Chance page (page 19) options
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_0"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_1"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_2"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_3"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_4"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_5"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_6"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_7"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_8"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_jreset_9"}]
# Advanced Settings > Aggro Factor page (page 20) options
clear @a minecraft:snow_block[minecraft:custom_data={gui_btn:"advanced_aggro_0"}]
clear @a minecraft:blue_ice[minecraft:custom_data={gui_btn:"advanced_aggro_1"}]
clear @a minecraft:packed_ice[minecraft:custom_data={gui_btn:"advanced_aggro_2"}]
clear @a minecraft:ice[minecraft:custom_data={gui_btn:"advanced_aggro_3"}]
clear @a minecraft:grass_block[minecraft:custom_data={gui_btn:"advanced_aggro_4"}]
clear @a minecraft:netherrack[minecraft:custom_data={gui_btn:"advanced_aggro_5"}]
clear @a minecraft:red_nether_bricks[minecraft:custom_data={gui_btn:"advanced_aggro_6"}]
clear @a minecraft:nether_bricks[minecraft:custom_data={gui_btn:"advanced_aggro_7"}]
clear @a minecraft:netherite_block[minecraft:custom_data={gui_btn:"advanced_aggro_8"}]
# Advanced Settings > W & S-tap Chance page (page 21) options
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_0"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_1"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_2"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_3"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_4"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_5"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_6"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_7"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_8"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_tap_9"}]
# Advanced Settings > Bot Ping page (page 22) options
clear @a minecraft:cut_copper[minecraft:custom_data={gui_btn:"advanced_ping_0"}]
clear @a minecraft:chiseled_copper[minecraft:custom_data={gui_btn:"advanced_ping_1"}]
clear @a minecraft:copper_block[minecraft:custom_data={gui_btn:"advanced_ping_2"}]
clear @a minecraft:exposed_copper[minecraft:custom_data={gui_btn:"advanced_ping_3"}]
clear @a minecraft:exposed_copper_grate[minecraft:custom_data={gui_btn:"advanced_ping_4"}]
clear @a minecraft:weathered_copper_grate[minecraft:custom_data={gui_btn:"advanced_ping_5"}]
clear @a minecraft:weathered_copper[minecraft:custom_data={gui_btn:"advanced_ping_6"}]
clear @a minecraft:oxidized_copper[minecraft:custom_data={gui_btn:"advanced_ping_7"}]
clear @a minecraft:oxidized_chiseled_copper[minecraft:custom_data={gui_btn:"advanced_ping_8"}]
clear @a minecraft:oxidized_cut_copper[minecraft:custom_data={gui_btn:"advanced_ping_9"}]

# Support & Credits page (page 23) items
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"credits_people"}]
# Important People page (page 24) items
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"credits_person"}]
# Music page (page 25) items
clear @a minecraft:music_disc_13[minecraft:custom_data={gui_btn:"music_undertale"}]
clear @a minecraft:music_disc_otherside[minecraft:custom_data={gui_btn:"music_otherside"}]
# Mace General Settings page (page 26) items
clear @a minecraft:hay_block[minecraft:custom_data={gui_btn:"mace_gs_no_fall"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_stun"}]
clear @a minecraft:cauldron[minecraft:custom_data={gui_btn:"mace_gs_refill"}]
clear @a minecraft:cactus[minecraft:custom_data={gui_btn:"mace_gs_pcrit"}]
clear @a minecraft:cobweb[minecraft:custom_data={gui_btn:"mace_gs_cobweb"}]
clear @a minecraft:turtle_egg[minecraft:custom_data={gui_btn:"mace_gs_small"}]
clear @a minecraft:fire_charge[minecraft:custom_data={gui_btn:"mace_gs_crit"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_buffs"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_shield"}]
clear @a minecraft:wind_charge[minecraft:custom_data={gui_btn:"mace_gs_wind_pearl"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_elytra"}]
clear @a minecraft:magenta_glazed_terracotta[minecraft:custom_data={gui_btn:"mace_gs_strafe"}]
clear @a minecraft:chorus_fruit[minecraft:custom_data={gui_btn:"mace_gs_random"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_spear"}]
clear @a minecraft:ender_pearl[minecraft:custom_data={gui_btn:"mace_gs_far_pearl"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_breakable"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_resistance"}]
clear @a minecraft:water_bucket[minecraft:custom_data={gui_btn:"mace_gs_water"}]
clear @a minecraft:slime_block[minecraft:custom_data={gui_btn:"mace_gs_jreset"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_axe"}]
clear @a minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_breach"}]
clear @a minecraft:ender_eye[minecraft:custom_data={gui_btn:"mace_gs_no_pearl_land"}]
clear @a minecraft:minecart[minecraft:custom_data={gui_btn:"mace_gs_stap"}]
clear @a minecraft:clock[minecraft:custom_data={gui_btn:"mace_gs_shieldcd"}]
clear @a minecraft:arrow[minecraft:custom_data={gui_btn:"mace_gs_prev"}]
clear @a minecraft:arrow[minecraft:custom_data={gui_btn:"mace_gs_next"}]
clear @a minecraft:nether_star[minecraft:custom_data={gui_btn:"mace_gs_pageinfo"}]

# Kill any dropped GUI items on the ground near each barrel.
execute in minecraft:overworld positioned -715.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -683.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -651.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -619.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -619.5 31.5 133.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s

# Detect barrel clicks for each barrel (checks for empty slots = clicked).
# detect_at is a macro that takes barrel coordinates.
execute in minecraft:overworld positioned -715.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_at {x:"-715",y:"31",z:"90"}
execute in minecraft:overworld positioned -683.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_at {x:"-683",y:"31",z:"90"}
execute in minecraft:overworld positioned -651.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_at {x:"-651",y:"31",z:"90"}
execute in minecraft:overworld positioned -619.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_at {x:"-619",y:"31",z:"90"}
execute in minecraft:overworld positioned -619.5 31.5 133.5 as @a[distance=..8] run function gui:core/detect_at {x:"-619",y:"31",z:"134"}

# Fallback: also check player inventories for GUI items (catches shift-clicks
# and cases where a cursor item was swapped into the barrel, preventing
# detect_at from seeing an empty slot).
execute in minecraft:overworld positioned -715.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_clicks
execute in minecraft:overworld positioned -683.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_clicks
execute in minecraft:overworld positioned -651.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_clicks
execute in minecraft:overworld positioned -619.5 31.5 89.5 as @a[distance=..8] run function gui:core/detect_clicks
execute in minecraft:overworld positioned -619.5 31.5 133.5 as @a[distance=..8] run function gui:core/detect_clicks

# Refresh barrel contents every tick while a player is nearby.
# Page functions modify the main barrel (-715 31 90) and then call
# gui:core/sync_barrels to copy Items to the 4 satellite barrels.
# Only need to check one barrel for a nearby player since all share
# the same .gui page state — if any barrel has a player, refresh.
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 8 run function gui:pages/settings
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 10 run function gui:pages/armor
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 11 run function gui:pages/presets
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 8 run function gui:pages/settings
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 10 run function gui:pages/armor
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 11 run function gui:pages/presets
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 8 run function gui:pages/settings
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 10 run function gui:pages/armor
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 11 run function gui:pages/presets
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 8 run function gui:pages/settings
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 10 run function gui:pages/armor
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 11 run function gui:pages/presets
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 8 run function gui:pages/settings
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 9 run function gui:pages/npc_settings
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 10 run function gui:pages/armor
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 11 run function gui:pages/presets
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 12 run function gui:pages/npc_general_settings
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 12 run function gui:pages/npc_general_settings
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 12 run function gui:pages/npc_general_settings
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 12 run function gui:pages/npc_general_settings
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 12 run function gui:pages/npc_general_settings
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 13 run function gui:pages/npc_attributes
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 14 run function gui:pages/extra
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 14 run function gui:pages/extra
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 14 run function gui:pages/extra
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 14 run function gui:pages/extra
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 14 run function gui:pages/extra
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 15 run function gui:pages/multiple_bots
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 16 run function gui:pages/teleports
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 16 run function gui:pages/teleports
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 16 run function gui:pages/teleports
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 16 run function gui:pages/teleports
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 16 run function gui:pages/teleports
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 17 run function gui:pages/advanced
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 17 run function gui:pages/advanced
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 17 run function gui:pages/advanced
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 17 run function gui:pages/advanced
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 17 run function gui:pages/advanced
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 18 run function gui:pages/advanced/reach
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 19 run function gui:pages/advanced/jreset
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 20 run function gui:pages/advanced/aggro
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 21 run function gui:pages/advanced/tap
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 22 run function gui:pages/advanced/ping
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 22 run function gui:pages/advanced/ping
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 22 run function gui:pages/advanced/ping
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 22 run function gui:pages/advanced/ping
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 22 run function gui:pages/advanced/ping

execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 23 run function gui:pages/credits_support
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 23 run function gui:pages/credits_support
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 23 run function gui:pages/credits_support
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 23 run function gui:pages/credits_support
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 23 run function gui:pages/credits_support
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 24 run function gui:pages/credits_people
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 24 run function gui:pages/credits_people
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 24 run function gui:pages/credits_people
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 24 run function gui:pages/credits_people
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 24 run function gui:pages/credits_people
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 25 run function gui:pages/music
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 25 run function gui:pages/music
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 25 run function gui:pages/music
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 25 run function gui:pages/music
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 25 run function gui:pages/music
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 26 run function gui:pages/mace_general_settings
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 26 run function gui:pages/mace_general_settings
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 26 run function gui:pages/mace_general_settings
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 26 run function gui:pages/mace_general_settings
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 26 run function gui:pages/mace_general_settings

# Update barrel CustomName to match the current page (breadcrumb path).
# Only need to check one barrel for a nearby player — update_name sets all 5.
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] run function gui:core/update_name

