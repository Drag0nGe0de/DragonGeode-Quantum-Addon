# GUI System — Click Detection
# Runs as each nearby player. Checks whether they have a GUI item in their
# inventory (meaning they just clicked/shift-clicked it out of the barrel).

# Main-page buttons
execute if items entity @s inventory.* minecraft:iron_sword[minecraft:custom_data~{gui_btn:"play"}] run function gui:click/play
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"statistics"}] run function gui:click/statistics
execute if items entity @s inventory.* minecraft:gold_ingot[minecraft:custom_data~{gui_btn:"credits_support"}] run function gui:click/credits_support

# Play-page buttons
execute if items entity @s inventory.* minecraft:lime_wool[minecraft:custom_data~{gui_btn:"start"}] run function gui:click/start
# Play-page gamemode button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:iron_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:splash_potion[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
# Play-page terrain button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:red_sand[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:mycelium[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:stone[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
# Play-page difficulty button (icon changes — check all possible item types)
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"settings"}] run function gui:click/settings

# Settings page buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"settings_npc"}] run function gui:click/settings_npc
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"settings_general"}] run function gui:click/settings_general
execute if items entity @s inventory.* minecraft:chain_command_block[minecraft:custom_data~{gui_btn:"settings_advanced"}] run function gui:click/settings_advanced

# NPC Settings page buttons
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc_armor
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc_armor
execute if items entity @s inventory.* minecraft:chainmail_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc_armor
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc_armor
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"npc_armor"}] run function gui:click/npc_armor
execute if items entity @s inventory.* minecraft:repeating_command_block[minecraft:custom_data~{gui_btn:"npc_general_settings"}] run function gui:click/npc_general_settings
execute if items entity @s inventory.* minecraft:beacon[minecraft:custom_data~{gui_btn:"npc_attributes"}] run function gui:click/npc_attributes
execute if items entity @s inventory.* minecraft:book[minecraft:custom_data~{gui_btn:"npc_presets"}] run function gui:click/npc_presets
execute if items entity @s inventory.* minecraft:writable_book[minecraft:custom_data~{gui_btn:"npc_tutorial"}] run function gui:click/npc_tutorial

# Armor page buttons
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"armor_leather"}] run function gui:click/armor_leather
execute if items entity @s inventory.* minecraft:chainmail_chestplate[minecraft:custom_data~{gui_btn:"armor_chainmail"}] run function gui:click/armor_chainmail
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"armor_iron"}] run function gui:click/armor_iron
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"armor_diamond"}] run function gui:click/armor_diamond
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"armor_netherite"}] run function gui:click/armor_netherite
execute if items entity @s inventory.* minecraft:netherite_leggings[minecraft:custom_data~{gui_btn:"armor_dbp"}] run function gui:click/armor_dbp
execute if items entity @s inventory.* minecraft:netherite_leggings[minecraft:custom_data~{gui_btn:"armor_sbp"}] run function gui:click/armor_sbp
execute if items entity @s inventory.* minecraft:barrier[minecraft:custom_data~{gui_btn:"armor_prot"}] run function gui:click/armor_prot

# Presets page buttons
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"preset_sword"}] run function gui:click/preset_sword
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"preset_crystal"}] run function gui:click/preset_crystal
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"preset_mace"}] run function gui:click/preset_mace

# Sub-page back button
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"back"}] run function gui:click/back

# Gamemode page buttons
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode_tnt_cart"}] run function gui:click/gamemode_tnt_cart
execute if items entity @s inventory.* minecraft:splash_potion[minecraft:custom_data~{gui_btn:"gamemode_pot"}] run function gui:click/gamemode_pot
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode_mace"}] run function gui:click/gamemode_mace
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode_vanilla"}] run function gui:click/gamemode_vanilla
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode_op_sword"}] run function gui:click/gamemode_op_sword

# Terrain page buttons
execute if items entity @s inventory.* minecraft:red_sand[minecraft:custom_data~{gui_btn:"terrain_badlands"}] run function gui:click/terrain_badlands
execute if items entity @s inventory.* minecraft:sand[minecraft:custom_data~{gui_btn:"terrain_desert"}] run function gui:click/terrain_desert
execute if items entity @s inventory.* minecraft:stone[minecraft:custom_data~{gui_btn:"terrain_cave"}] run function gui:click/terrain_cave
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain_plains"}] run function gui:click/terrain_plains
execute if items entity @s inventory.* minecraft:snow_block[minecraft:custom_data~{gui_btn:"terrain_snowy_plains"}] run function gui:click/terrain_snowy_plains
execute if items entity @s inventory.* minecraft:mycelium[minecraft:custom_data~{gui_btn:"terrain_mushroom"}] run function gui:click/terrain_mushroom
execute if items entity @s inventory.* minecraft:netherite_block[minecraft:custom_data~{gui_btn:"terrain_netherite"}] run function gui:click/terrain_netherite

# Difficulty page buttons
execute if items entity @s inventory.* minecraft:player_head[minecraft:custom_data~{gui_btn:"difficulty_npc"}] run function gui:click/difficulty_npc
execute if items entity @s inventory.* minecraft:leather_chestplate[minecraft:custom_data~{gui_btn:"difficulty_easy"}] run function gui:click/difficulty_easy
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"difficulty_medium"}] run function gui:click/difficulty_medium
execute if items entity @s inventory.* minecraft:diamond_chestplate[minecraft:custom_data~{gui_btn:"difficulty_hard"}] run function gui:click/difficulty_hard
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty_crazy"}] run function gui:click/difficulty_crazy
execute if items entity @s inventory.* minecraft:netherite_chestplate[minecraft:custom_data~{gui_btn:"difficulty_master"}] run function gui:click/difficulty_master

# Mech Training button (play page)
execute if items entity @s inventory.* minecraft:diamond[minecraft:custom_data~{gui_btn:"mech_training"}] run function gui:click/mech_training

# Filler cleanup
# If a player accidentally takes a filler, remove it and refresh the barrel.
execute if items entity @s inventory.* minecraft:gray_stained_glass_pane[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
