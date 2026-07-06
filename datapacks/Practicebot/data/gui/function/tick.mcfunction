# GUI System — Tick
# Runs every game tick via minecraft:tick tag.
# Supports 5 barrels: -715 31 90 (main), -683 31 90, -651 31 90, -619 31 90, -619 31 134

# Repair any GUI barrel when a player is nearby.
# Handles reloads where the score was set but the chunk/barrel wasn't ready.
# Also checks for empty barrels (barrel exists but slot 12 has no item = needs fill).
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -715 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -683 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -651 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] unless block -619 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] unless block -619 31 134 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if block -715 31 90 minecraft:barrel unless score .gui gui_page matches 1..7 run function gui:setup
# Empty-barrel safety: if the main barrel exists but slot 12 is empty (no button),
# the barrel needs to be (re)filled. This catches the case where the barrel block
# survived from a previous session but its Items were wiped.
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if block -715 31 90 minecraft:barrel unless data block -715 31 90 Items[{Slot:12b}] run function gui:setup

# Clear any GUI items from all players' inventories (not just nearby).
# Items have gui_btn/gui_cat tags so this won't affect normal items.
# Cursor items can't be cleared — they're cleaned up when the barrel refreshes.
clear @a minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
clear @a minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
clear @a minecraft:iron_sword[minecraft:custom_data={gui_btn:"play"}]
clear @a minecraft:iron_sword[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:splash_potion[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:mace[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:diamond_sword[minecraft:custom_data={gui_btn:"gamemode"}]
clear @a minecraft:writable_book[minecraft:custom_data={gui_btn:"statistics"}]
clear @a minecraft:gold_ingot[minecraft:custom_data={gui_btn:"credits_support"}]
clear @a minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]
clear @a minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:mycelium[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:snow_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:stone[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:netherite_block[minecraft:custom_data={gui_btn:"terrain"}]
clear @a minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:leather_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:diamond_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:netherite_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:command_block[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty"}]
clear @a minecraft:command_block[minecraft:custom_data={gui_btn:"settings"}]
clear @a minecraft:feather[minecraft:custom_data={gui_btn:"back"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode_tnt_cart"}]
clear @a minecraft:splash_potion[minecraft:custom_data={gui_btn:"gamemode_pot"}]
clear @a minecraft:mace[minecraft:custom_data={gui_btn:"gamemode_mace"}]
clear @a minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode_vanilla"}]
clear @a minecraft:diamond_sword[minecraft:custom_data={gui_btn:"gamemode_op_sword"}]
clear @a minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain_badlands"}]
clear @a minecraft:sand[minecraft:custom_data={gui_btn:"terrain_desert"}]
clear @a minecraft:stone[minecraft:custom_data={gui_btn:"terrain_cave"}]
clear @a minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain_plains"}]
clear @a minecraft:snow_block[minecraft:custom_data={gui_btn:"terrain_snowy_plains"}]
clear @a minecraft:mycelium[minecraft:custom_data={gui_btn:"terrain_mushroom"}]
clear @a minecraft:netherite_block[minecraft:custom_data={gui_btn:"terrain_netherite"}]
clear @a minecraft:player_head[minecraft:custom_data={gui_btn:"difficulty_npc"}]
clear @a minecraft:leather_chestplate[minecraft:custom_data={gui_btn:"difficulty_easy"}]
clear @a minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"difficulty_medium"}]
clear @a minecraft:diamond_chestplate[minecraft:custom_data={gui_btn:"difficulty_hard"}]
clear @a minecraft:netherite_chestplate[minecraft:custom_data={gui_btn:"difficulty_crazy"}]
clear @a minecraft:netherite_chestplate[minecraft:custom_data={gui_btn:"difficulty_master"}]
clear @a minecraft:diamond[minecraft:custom_data={gui_btn:"mech_training"}]
clear @a minecraft:end_crystal[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:obsidian[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:respawn_anchor[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:ender_pearl[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:mace[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:firework_rocket[minecraft:custom_data~{gui_cat:"mech"}]
clear @a minecraft:tnt_minecart[minecraft:custom_data~{gui_cat:"mech"}]

# Kill any dropped GUI items on the ground near each barrel.
execute in minecraft:overworld positioned -715.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -683.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -651.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -619.5 31.5 89.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s
execute in minecraft:overworld positioned -619.5 31.5 133.5 as @e[type=item,distance=..16] if data entity @s Item.components."minecraft:custom_data".gui_btn run kill @s

# Detect barrel clicks for each barrel (checks for empty slots = clicked).
# detect_at is a macro that takes barrel coordinates.
execute in minecraft:overworld positioned -715.5 31.5 89.5 as @a[distance=..8] run function gui:detect_at {x:"-715",y:"31",z:"90"}
execute in minecraft:overworld positioned -683.5 31.5 89.5 as @a[distance=..8] run function gui:detect_at {x:"-683",y:"31",z:"90"}
execute in minecraft:overworld positioned -651.5 31.5 89.5 as @a[distance=..8] run function gui:detect_at {x:"-651",y:"31",z:"90"}
execute in minecraft:overworld positioned -619.5 31.5 89.5 as @a[distance=..8] run function gui:detect_at {x:"-619",y:"31",z:"90"}
execute in minecraft:overworld positioned -619.5 31.5 133.5 as @a[distance=..8] run function gui:detect_at {x:"-619",y:"31",z:"134"}

# Refresh barrel contents every tick while a player is nearby.
# Page functions modify the main barrel (-715 31 90) and then call
# gui:sync_barrels to copy Items to the 4 satellite barrels.
# Only need to check one barrel for a nearby player since all share
# the same .gui page state — if any barrel has a player, refresh.
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -715.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -683.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -651.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -619.5 31.5 89.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 5 run function gui:pages/terrain
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 6 run function gui:pages/difficulty
execute in minecraft:overworld positioned -619.5 31.5 133.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 7 run function gui:pages/mech_training

