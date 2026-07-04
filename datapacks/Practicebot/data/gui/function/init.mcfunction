# GUI System — Initialisation
# Called on datapack load via minecraft:load tag.

execute in overworld run forceload add -45 5

scoreboard objectives remove gui_page
scoreboard objectives add gui_page dummy

# Place the GUI barrel facing east at -715 31 90
execute in overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace

# Give the barrel a title (using data modify to fix the CustomName bug)
execute in overworld run data modify block -715 31 90 CustomName set value {"text":"Settings","italic":false}

# Fill the barrel with the main page
function gui:pages/main