# GUI System - Click: terrain_cave
# Cave terrain: set .terrain = 6 and return to play page
clear @s minecraft:stone[minecraft:custom_data={gui_btn:"terrain_cave"}]

# Set the terrain score
scoreboard players set .terrain terrain 6

# Feedback (matches quantum:set_terrain behaviour)
title @a actionbar {"text":"Successfully set terrain","color":"green"}
playsound block.beacon.power_select master @a ~ ~ ~ 1 1 1

# Reset history stack so Back from Play returns to Main (not to Play itself).
# Without this, .gui_prev stays at 2 (Play) from the earlier Play->Terrain
# push, and Back from Play would re-navigate to Play -- appearing "stuck".
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes terrain icon)
function gui:features/play/page
