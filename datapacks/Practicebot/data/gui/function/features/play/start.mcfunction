# GUI System - Click: start
# Run the map start function (no WIP page anymore)
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]

# Run the start function (handles kit loading, tp, scheduling, etc.)
function quantum:map/start

# Reset the GUI to the main page so the Start button doesn't re-trigger.
# Without this, .gui stays at 2 (Play) and the barrel keeps showing the
# Start button — which detect_barrel_clicks would fire again the next
# time a player approaches and the slot is briefly empty.
# Resetting to page 1 means the barrel shows Play/Statistics/Credits
# (no Start button) until the player navigates to Play again.
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
function gui:features/main/page
