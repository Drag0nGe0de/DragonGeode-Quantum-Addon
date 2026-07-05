# GUI System - Click: difficulty_crazy
# Crazy difficulty: run quantum:difficulty/4 and return to play page
clear @s minecraft:netherite_chestplate[minecraft:custom_data={gui_btn:"difficulty_crazy"}]

# Run the difficulty function (sets .difficulty score, applies bot settings, etc.)
function quantum:difficulty/4

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes difficulty icon + lore)
function gui:pages/play
