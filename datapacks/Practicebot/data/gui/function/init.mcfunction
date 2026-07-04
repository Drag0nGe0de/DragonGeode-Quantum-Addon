# GUI System — Initialisation
# Called once on datapack load via minecraft:load tag

scoreboard objectives add gui_page dummy

# Place the GUI barrel facing east at -715 31 90
execute in overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace

# Give the barrel a title
execute in overworld run data merge block -715 31 90 {CustomName:'{"text":"Settings","italic":false}'}

# Fill the barrel with the main page
function gui:pages/main
