# GUI System — Sync Chest Minecarts
# Copies Items[] from the main barrel (-715 31 90) to every active chest
# minecart GUI. Called from chest/tick after all per-player follow logic.
# chest_minecart uses the same Items[] NBT layout as a barrel, so we copy
# the list verbatim — no per-slot translation needed.

execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data modify entity @s Items set from block -715 31 90 Items
