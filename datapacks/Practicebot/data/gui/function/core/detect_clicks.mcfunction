# GUI System — Click Detection
# Runs as each nearby player. Checks whether they have a GUI item in their
# inventory (meaning they just clicked/shift-clicked it out of the barrel).

# Main-page buttons
execute if items entity @s inventory.* minecraft:iron_sword[minecraft:custom_data~{gui_btn:"play"}] run function gui:click/main/play
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"statistics"}] run function gui:click/main/statistics
execute if items entity @s inventory.* minecraft:gold_ingot[minecraft:custom_data~{gui_btn:"credits_support"}] run function gui:click/main/credits_support

# Play-page buttons
execute if items entity @s inventory.* minecraft:lime_wool[minecraft:custom_data~{gui_btn:"start"}] run function gui:click/main/start
# Play-page gamemode button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:iron_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:splash_potion[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode/open
# Play-page terrain button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:red_sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:mycelium[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:stone[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain/open
# Play-page difficulty button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty/open
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"settings"}] run function gui:click/settings/open

# Settings page buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"settings_npc"}] run function gui:click/settings/npc
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"settings_general"}] run function gui:click/settings/general
execute if items entity @s inventory.* minecraft:chain_command_block[minecraft:custom_data~{gui_btn:"settings_advanced"}] run function gui:click/settings/advanced

# NPC Settings page buttons
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:chainmail_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc/armor
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"npc_general_settings"}] run function gui:click/npc/general_settings
execute if items entity @s inventory.* minecraft:beacon[minecraft:custom_data~{gui_btn:"npc_attributes"}] run function gui:click/npc/attributes
execute if items entity @s inventory.* minecraft:book[minecraft:custom_data~{gui_btn:"npc_presets"}] run function gui:click/npc/presets
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"npc_tutorial"}] run function gui:click/npc/tutorial

# Armor page buttons
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"armor_leather"}] run function gui:click/armor/leather
execute if items entity @s inventory.* minecraft:chainmail_chestplate[minecraft:custom_data~{gui_btn:"armor_chainmail"}] run function gui:click/armor/chainmail
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"armor_iron"}] run function gui:click/armor/iron
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"armor_diamond"}] run function gui:click/armor/diamond
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"armor_netherite"}] run function gui:click/armor/netherite
execute if items entity @s inventory.* minecraft:netherite_leggings[minecraft:custom_data~{gui_btn:"armor_dbp"}] run function gui:click/armor/dbp
execute if items entity @s inventory.* minecraft:netherite_leggings[minecraft:custom_data~{gui_btn:"armor_sbp"}] run function gui:click/armor/sbp
execute if items entity @s inventory.* minecraft:barrier[minecraft:custom_data~{gui_btn:"armor_prot"}] run function gui:click/armor/prot

# Presets page buttons
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"preset_sword"}] run function gui:click/preset/sword
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"preset_crystal"}] run function gui:click/preset/crystal
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"preset_mace"}] run function gui:click/preset/mace

# Sub-page back button
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"back"}] run function gui:click/main/back

# Gamemode page buttons
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode_tnt_cart"}] run function gui:click/gamemode/tnt_cart
execute if items entity @s inventory.* minecraft:splash_potion[minecraft:custom_data~{gui_btn:"gamemode_pot"}] run function gui:click/gamemode/pot
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode_mace"}] run function gui:click/gamemode/mace
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode_vanilla"}] run function gui:click/gamemode/vanilla
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode_op_sword"}] run function gui:click/gamemode/op_sword

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
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"difficulty_easy"}] run function gui:click/difficulty/easy
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"difficulty_medium"}] run function gui:click/difficulty/medium
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"difficulty_hard"}] run function gui:click/difficulty/hard
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty_crazy"}] run function gui:click/difficulty/crazy
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty_master"}] run function gui:click/difficulty/master

# Mech Training button (play page)
execute if items entity @s inventory.* minecraft:diamond[minecraft:custom_data~{gui_btn:"mech_training"}] run function gui:click/mech/training

# Filler cleanup
# If a player accidentally takes a filler, remove it and refresh the barrel.
execute if items entity @s inventory.* minecraft:gray_stained_glass_pane[minecraft:custom_data~{gui_btn:"filler"}] run function gui:core/return_filler
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"filler"}] run function gui:core/return_filler
