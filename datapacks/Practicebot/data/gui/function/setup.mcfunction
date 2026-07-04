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

# Fill the barrel with the main page (also sets gui_page = 1, stopping re-setup)
function gui:pages/main
