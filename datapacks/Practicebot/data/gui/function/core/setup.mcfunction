# GUI System — Barrel Setup
# Called from tick.mcfunction the first time a player steps within 4 blocks of
# the barrel after a datapack load/reload.  Running from tick means the chunk
# at -715 31 90 is always loaded before any block command executes.

# Place (or reset) all 5 GUI barrels
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -683 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -651 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 134 minecraft:barrel[facing=east] replace

# ── Bug 1 fix: use data modify ... set value with a compound text component ──
# Do NOT use:  data merge block ... {CustomName:'{"text":"Settings","italic":false}'}
# That stores CustomName as a plain NBT string. In this version MC renders
# it as literal text, not a text component, so the raw JSON appears as the title.
# Instead match the pattern used elsewhere in this pack for entity CustomName:
#   data modify entity @s CustomName set value {"text":"...","color":"..."}
execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -683 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -651 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 134 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}

# Initialize the page history stack to page 1 (main)
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
scoreboard players set .gui_prev3 gui_page 1
scoreboard players set .gui_prev4 gui_page 1
# Restore gamemode selection (.gm) from the persistent .mode score.
# gui_page objective is recreated in init.mcfunction (wiping .gm), but the
# "mode" objective persists. Map mode -> gm (see init.mcfunction for full table).
# Only set .gm if it's not already valid (0..5) — if init already set it, keep it.
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 1 run scoreboard players set .gm gui_page 5
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 2 run scoreboard players set .gm gui_page 4
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 3 run scoreboard players set .gm gui_page 3
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 4 run scoreboard players set .gm gui_page 2
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 5 run scoreboard players set .gm gui_page 2
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 6 run scoreboard players set .gm gui_page 1
# Fallback: if .mode is also invalid, default to Crystal (gm 4)
execute unless score .gm gui_page matches 0..5 run execute unless score .mode mode matches 1..6 run scoreboard players set .gm gui_page 4
# Initialize terrain selection (.terrain: 0=netherite/flat, 1=plains, 2=desert, 3=badlands,
# 4=mushroom, 5=snow, 6=cave — on the "terrain" objective, persists across GUI reloads)
# Default is netherite (0). Use "unless" so a player's existing selection survives reloads.
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0
# Initialize difficulty selection (.difficulty: 0=NPC, 1=Easy, 2=Medium, 3=Hard, 4=Crazy, 5=Master)
# Default is Crazy (4). difficulty objective persists, so use "unless" to keep existing selection.
execute unless score .difficulty difficulty matches 0..5 run scoreboard players set .difficulty difficulty 4

# Fill the barrel with the main page (also sets gui_page = 1, stopping re-setup)
function gui:features/main/page
