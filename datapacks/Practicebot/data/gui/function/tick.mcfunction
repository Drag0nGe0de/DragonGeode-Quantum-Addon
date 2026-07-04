# GUI System — Tick
# Runs every game tick via minecraft:tick tag.

# Repair the GUI when a player is nearby. This handles reloads where the score
# was set but the chunk/barrel contents were not ready yet.
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] unless block -715 31 90 minecraft:barrel run function gui:setup
execute in minecraft:overworld positioned -715.5 31.5 90.5 if entity @a[distance=..4,limit=1] if block -715 31 90 minecraft:barrel unless data block -715 31 90 Items[{Slot:12b,components:{"minecraft:custom_data":{gui_btn:"play"}}}] run function gui:setup

# Then check for any GUI items players have picked up from the barrel.
execute in minecraft:overworld positioned -715.5 31.5 90.5 as @a[distance=..4] run function gui:detect_clicks
