# GUI System - Click: difficulty_master
# Master difficulty: run quantum:difficulty/5 and return to play page
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"difficulty_master"}]

# Run the difficulty function as quantumbot (sets .difficulty score, applies bot settings, etc.)
execute as quantumbot run function quantum:difficulty/5

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes difficulty icon + lore)
function gui:pages/play
