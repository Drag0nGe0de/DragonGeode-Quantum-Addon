# GUI System — Tick
# Runs every game tick via minecraft:tick tag.
# Selects any player within 4 blocks of the barrel and checks for picked-up GUI items.
execute in overworld positioned -715.5 31.5 90.5 as @a[distance=..4] run function gui:detect_clicks
