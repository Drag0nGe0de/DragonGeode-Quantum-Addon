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
execute if items entity @s inventory.* minecraft:flower_pot[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:iron_chestplate[minecraft:custom_data~{gui_btn:"difficulty"}] run function gui:click/difficulty
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"settings"}] run function gui:click/settings

# Sub-page back button
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"back"}] run function gui:click/back

# Gamemode page buttons
execute if items entity @s inventory.* minecraft:tnt_minecart[minecraft:custom_data~{gui_btn:"gamemode_tnt_cart"}] run function gui:click/gamemode_tnt_cart
execute if items entity @s inventory.* minecraft:flower_pot[minecraft:custom_data~{gui_btn:"gamemode_pot"}] run function gui:click/gamemode_pot
execute if items entity @s inventory.* minecraft:mace[minecraft:custom_data~{gui_btn:"gamemode_mace"}] run function gui:click/gamemode_mace
execute if items entity @s inventory.* minecraft:end_crystal[minecraft:custom_data~{gui_btn:"gamemode_vanilla"}] run function gui:click/gamemode_vanilla
execute if items entity @s inventory.* minecraft:diamond_sword[minecraft:custom_data~{gui_btn:"gamemode_op_sword"}] run function gui:click/gamemode_op_sword

# Filler cleanup
# If a player accidentally takes a filler, remove it and refresh the barrel.
execute if items entity @s inventory.* minecraft:gray_stained_glass_pane[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
