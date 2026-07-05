# GUI System - Click: difficulty_hard
# Hard difficulty: run quantum:difficulty/3 and return to play page
clear @s minecraft:diamond_chestplate[minecraft:custom_data={gui_btn:"difficulty_hard"}]

# Run the difficulty function (sets .difficulty score, applies bot settings, etc.)
function quantum:difficulty/3

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes difficulty icon + lore)
function gui:pages/play
