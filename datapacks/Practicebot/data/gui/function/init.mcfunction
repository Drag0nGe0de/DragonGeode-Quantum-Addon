# GUI System — Initialisation
# Called on datapack load via minecraft:load tag.

execute in minecraft:overworld run forceload add -45 5

scoreboard objectives remove gui_page
scoreboard objectives add gui_page dummy

# Initialize the page history stack to page 1 (main).
# Required here because removing the objective above wipes every score;
# without this, .gui_prev / .gui_prev2 stay undefined until a player
# approaches the barrel (the only other place setup.mcfunction runs),
# and a Back click in that window would resolve to 0 = "no page".
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
# Default gamemode is Crystal (4). gui_page objective is recreated above so .gm
# is always reset on reload — there's no way to preserve selection here.
scoreboard players set .gm gui_page 4
# Default terrain is Netherite (0 = flat/netherite dimension). terrain objective
# persists across reloads, so use "unless" to keep an existing valid selection.
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0
# Default difficulty is Hard (3). difficulty objective persists across reloads,
# so use "unless" to keep an existing valid selection.
execute unless score .difficulty difficulty matches 0..5 run scoreboard players set .difficulty difficulty 3

# Place the GUI barrel facing east at -715 31 90
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace

# Give the barrel a title (using data modify to fix the CustomName bug)
execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Settings","italic":false}

# Fill the barrel with the main page
function gui:pages/main
