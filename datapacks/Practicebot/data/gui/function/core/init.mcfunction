# GUI System — Initialisation
# Called on datapack load via minecraft:load tag.

# Forceload the chunks containing all 5 GUI barrels so that the setblock/data
# commands below succeed on initial world load (before any player approaches).
# forceload takes BLOCK coordinates, not chunk coordinates.
# Barrel chunks: (-45,5) (-43,5) (-41,5) (-39,5) (-39,8)
execute in minecraft:overworld run forceload add -715 90
execute in minecraft:overworld run forceload add -683 90
execute in minecraft:overworld run forceload add -651 90
execute in minecraft:overworld run forceload add -619 90
execute in minecraft:overworld run forceload add -619 134

scoreboard objectives remove gui_page
scoreboard objectives add gui_page dummy

# Initialize the page history stack to page 1 (main).
# Required here because removing the objective above wipes every score;
# without this, .gui_prev / .gui_prev2 stay undefined until a player
# approaches the barrel (the only other place setup.mcfunction runs),
# and a Back click in that window would resolve to 0 = "no page".
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
scoreboard players set .gui_prev3 gui_page 1
scoreboard players set .gui_prev4 gui_page 1
# Default NPC General Settings sub-page to 1 (first page of toggles).
scoreboard players set .npc_gs_page gui_page 1
# Initialize customizable setting scores (mirrors reset_custom defaults)
# so the Attributes page can read them on first load.
execute unless score .bot_scale var matches -1..255 run scoreboard players set .bot_scale var 2
execute unless score .bot_slowness var matches -1..255 run scoreboard players set .bot_slowness var -1
execute unless score .bot_speed var matches -1..255 run scoreboard players set .bot_speed var -1
execute unless score .jump_boost var matches -1..255 run scoreboard players set .jump_boost var -1
execute unless score .reach var matches -1..255 run scoreboard players set .reach var 6
execute unless score .react var matches -1..255 run scoreboard players set .react var 1
execute unless score .scale var matches -1..255 run scoreboard players set .scale var 2
execute unless score .slowness var matches -1..255 run scoreboard players set .slowness var -1
execute unless score .speed var matches -1..255 run scoreboard players set .speed var -1
execute unless score .strength var matches -1..255 run scoreboard players set .strength var -1
# Default .var var to 1 (increase mode) if not already 1 or -1
execute unless score .var var matches 1 run execute unless score .var var matches -1 run scoreboard players set .var var 1
# Restore gamemode selection (.gm) from the persistent .mode score.
# gui_page objective is recreated above (wiping .gm), but the "mode" objective
# persists across reloads. Map mode -> gm:
#   mode 1 (sword)    -> gm 5 (OP Sword)
#   mode 2 (crystal)  -> gm 4 (Vanilla)
#   mode 3 (mace)     -> gm 3 (Mace)
#   mode 4 (nethpot)  -> gm 2 (Pot)
#   mode 5 (pot)      -> gm 2 (Pot)
#   mode 6 (cart)     -> gm 1 (TNT Cart)
# If .mode is unset/invalid, default to Crystal (gm 4).
execute if score .mode mode matches 1 run scoreboard players set .gm gui_page 5
execute if score .mode mode matches 2 run scoreboard players set .gm gui_page 4
execute if score .mode mode matches 3 run scoreboard players set .gm gui_page 3
execute if score .mode mode matches 4 run scoreboard players set .gm gui_page 2
execute if score .mode mode matches 5 run scoreboard players set .gm gui_page 2
execute if score .mode mode matches 6 run scoreboard players set .gm gui_page 1
# Fallback: if .mode is not 1..6, default to Crystal (gm 4)
execute unless score .mode mode matches 1..6 run scoreboard players set .gm gui_page 4
# Default terrain is Netherite (0 = flat/netherite dimension). terrain objective
# persists across reloads, so use "unless" to keep an existing valid selection.
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0
# Default difficulty is Hard (3). difficulty objective persists across reloads,
# so use "unless" to keep an existing valid selection.
execute unless score .difficulty difficulty matches 0..5 run scoreboard players set .difficulty difficulty 4

# Place all 5 GUI barrels facing east
# Main barrel: -715 31 90
# Satellite barrels: -683 31 90, -651 31 90, -619 31 90, -619 31 134
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -683 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -651 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 134 minecraft:barrel[facing=east] replace

# Give all barrels a title (using data modify to fix the CustomName bug)
execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Settings","italic":false}
execute in minecraft:overworld run data modify block -683 31 90 CustomName set value {"text":"Settings","italic":false}
execute in minecraft:overworld run data modify block -651 31 90 CustomName set value {"text":"Settings","italic":false}
execute in minecraft:overworld run data modify block -619 31 90 CustomName set value {"text":"Settings","italic":false}
execute in minecraft:overworld run data modify block -619 31 134 CustomName set value {"text":"Settings","italic":false}

# Fill the main barrel with the main page (sync_barrels copies to satellites)
function gui:pages/main
