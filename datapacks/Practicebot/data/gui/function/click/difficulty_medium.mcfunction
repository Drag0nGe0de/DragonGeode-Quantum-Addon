# GUI System - Click: difficulty_medium
# Medium difficulty: run quantum:difficulty/2 and return to play page
clear @s minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"difficulty_medium"}]

# Run the difficulty function (sets .difficulty score, applies bot settings, etc.)
function quantum:difficulty/2

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes difficulty icon + lore)
function gui:pages/play
