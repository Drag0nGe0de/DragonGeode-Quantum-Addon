# GUI System — Tick
# Runs every game tick via minecraft:tick tag.

# If the barrel hasn't been set up yet (gui_page == 0), do so the first tick
# a player is nearby (chunk guaranteed loaded at that point).
# Then check for any GUI items players have picked up from the barrel.
execute in overworld positioned -715.5 31.5 90.5 as @a[distance=..4,limit=1] unless score .gui gui_page matches 1..99 run function gui:setup
execute in overworld positioned -715.5 31.5 90.5 as @a[distance=..4] run function gui:detect_clicks
