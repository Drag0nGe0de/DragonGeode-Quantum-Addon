# GUI System — Barrel Setup
# Called from tick.mcfunction the first time a player steps within 4 blocks of
# the barrel after a datapack load/reload.  Running from tick means the chunk
# at -715 31 90 is always loaded before any block command executes.

# Place (or reset) the GUI barrel
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace

# ── Bug 1 fix: use data modify ... set value with a compound text component ──
# Do NOT use:  data merge block ... {CustomName:'{"text":"Settings","italic":false}'}
# That stores CustomName as a plain NBT string. In this version MC renders
# it as literal text, not a text component, so the raw JSON appears as the title.
# Instead match the pattern used elsewhere in this pack for entity CustomName:
#   data modify entity @s CustomName set value {"text":"...","color":"..."}
execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Settings","italic":false}

# Initialize the page history stack to page 1 (main)
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
# Initialize gamemode selection (.gm: 0=none, 1=TnT Cart, 2=Pot, 3=Mace, 4=Crystal/Vanilla, 5=OP Sword)
# Default is Crystal (4). Use "unless" so init's value (or a previously-set value) survives.
execute unless score .gm gui_page matches 0..5 run scoreboard players set .gm gui_page 4
# Initialize terrain selection (.terrain: 0=netherite/flat, 1=plains, 2=desert, 3=badlands,
# 4=mushroom, 5=snow, 6=cave — on the "terrain" objective, persists across GUI reloads)
# Default is netherite (0). Use "unless" so a player's existing selection survives reloads.
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0

# Fill the barrel with the main page (also sets gui_page = 1, stopping re-setup)
function gui:pages/main
