# GUI System — Click: back
# Remove the back feather and return to the previous page using history stack.
clear @s minecraft:feather[minecraft:custom_data={gui_btn:"back"}]

# Store the back-target page, then shift the history stack.
# Use a dedicated temp holder (.gui_back) instead of #s -- #s is shared with
# detect_barrel_clicks.mcfunction as the data-get success score, and reusing
# it here can race with subsequent slot checks after this function returns.
scoreboard players operation .gui_back gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page

# Navigate to the stored back-target page
execute if score .gui_back gui_page matches 1 run function gui:pages/main
execute if score .gui_back gui_page matches 2 run function gui:pages/play
execute if score .gui_back gui_page matches 3 run function gui:pages/wip
execute if score .gui_back gui_page matches 4 run function gui:pages/gamemode
execute if score .gui_back gui_page matches 5 run function gui:pages/terrain
execute if score .gui_back gui_page matches 6 run function gui:pages/difficulty
execute if score .gui_back gui_page matches 7 run function gui:pages/mech_training
# Safety fallback: if the history stack was uninitialized or corrupted,
# always fall back to the main page so the player is never stuck.
execute unless score .gui_back gui_page matches 1..7 run function gui:pages/main