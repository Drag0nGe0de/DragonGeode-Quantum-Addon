# GUI System — Tick
# Runs every game tick via minecraft:tick tag.

# Repair the GUI when a player is nearby. This handles reloads where the score
# was set but the chunk/barrel contents were not ready yet.
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] unless block -715 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if block -715 31 90 minecraft:barrel unless score .gui gui_page matches 1..4 run function gui:setup

# Aggressively clear any GUI items from nearby players' inventories.
# This catches items that landed in inventory (barrel close, shift-click).
# Cursor items cannot be cleared by commands — they are cleaned up here
# the instant the player closes the barrel or places the item.
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:gray_stained_glass_pane[minecraft:custom_data={gui_btn:"filler"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"filler"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:iron_sword[minecraft:custom_data={gui_btn:"play"}]
# Play-page gamemode button (icon changes — clear all possible item types)
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:iron_sword[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:flower_pot[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:mace[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:diamond_sword[minecraft:custom_data={gui_btn:"gamemode"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:writable_book[minecraft:custom_data={gui_btn:"statistics"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:gold_ingot[minecraft:custom_data={gui_btn:"credits_support"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"settings"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:feather[minecraft:custom_data={gui_btn:"back"}]

# Gamemode page items
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode_tnt_cart"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:flower_pot[minecraft:custom_data={gui_btn:"gamemode_pot"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:mace[minecraft:custom_data={gui_btn:"gamemode_mace"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"gamemode_vanilla"}]
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run clear @s minecraft:diamond_sword[minecraft:custom_data={gui_btn:"gamemode_op_sword"}]

# Detect barrel clicks: check if a button was taken from the barrel.
# This catches normal clicks (item goes to cursor, NOT inventory.*).
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..8] run function gui:detect_barrel_clicks

# Refresh barrel contents every tick while a player is nearby.
# This prevents item theft (barrel always has the correct items) and
# restores any filler slots that were taken.
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..8,limit=1] if score .gui gui_page matches 4 run function gui:pages/gamemode