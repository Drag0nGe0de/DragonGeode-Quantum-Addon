# GUI System — Tick
# Runs every game tick via minecraft:tick tag.

# Repair the GUI when a player is nearby. This handles reloads where the score
# was set but the chunk/barrel contents were not ready yet.
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] unless block -715 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] if block -715 31 90 minecraft:barrel unless score .gui gui_page matches 1..3 run function gui:setup

# Detect barrel clicks: check if a button was taken from the barrel.
# This catches normal clicks (item goes to cursor, NOT inventory.*).
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..4] run function gui:detect_barrel_clicks

# Detect inventory clicks: check if a GUI item ended up in a player's inventory.
# This catches shift-clicks and items that were on the cursor when the barrel closed.
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..4] run function gui:detect_clicks

# Refresh barrel contents every tick while a player is nearby.
# This prevents item theft (barrel always has the correct items) and
# restores any filler slots that were taken.
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] if score .gui gui_page matches 1 run function gui:pages/main
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] if score .gui gui_page matches 2 run function gui:pages/play
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] if score .gui gui_page matches 3 run function gui:pages/wip