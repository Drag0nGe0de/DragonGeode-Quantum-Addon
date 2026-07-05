# GUI System - Click: start
# Run the map start function (no WIP page anymore)
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]

# Run the start function (handles kit loading, tp, scheduling, etc.)
function quantum:map/start
