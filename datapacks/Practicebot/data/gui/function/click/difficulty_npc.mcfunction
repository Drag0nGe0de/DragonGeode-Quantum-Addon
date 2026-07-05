# GUI System - Click: difficulty_npc
# Npc difficulty: run quantum:difficulty/0 and return to play page
clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"difficulty_npc"}]

# Run the difficulty function (sets .difficulty score, applies bot settings, etc.)
function quantum:difficulty/0

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Return to play page (refreshes difficulty icon + lore)
function gui:pages/play
