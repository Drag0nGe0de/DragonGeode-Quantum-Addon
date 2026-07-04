# GUI System — Initialisation
# Called once on datapack load via minecraft:load tag

scoreboard objectives add gui_page dummy

# Set gui_page to 0 ("needs setup"). The actual barrel placement and fill
# happen in gui:setup, which tick calls the first time a player is within
# 4 blocks of the barrel. This guarantees the chunk is loaded before any
# block command runs.
scoreboard players set .gui gui_page 0
