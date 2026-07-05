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
scoreboard players set .gm gui_page 0

# Place the GUI barrel facing east at -715 31 90
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace

# Give the barrel a title (using data modify to fix the CustomName bug)
execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Settings","italic":false}

# Fill the barrel with the main page
function gui:pages/main
