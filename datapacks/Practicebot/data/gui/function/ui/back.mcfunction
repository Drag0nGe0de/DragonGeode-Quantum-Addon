# UI — Back
# Universal back button. Pops the history stack and renders the previous page.
clear @s minecraft:feather[minecraft:custom_data={gui_btn:"back"}]

# Store the back-target page, then shift the history stack.
# Use a dedicated temp holder (.gui_back) instead of #s -- #s is shared with
# detect_barrel.mcfunction as the data-get success score, and reusing
# it here can race with subsequent slot checks after this function returns.
scoreboard players operation .gui_back gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev4 gui_page

# Render the back-target page (single dispatch through ui/refresh).
# We temporarily copy .gui_back into .gui so refresh picks the right page,
# then restore .gui (which equals .gui_back anyway).
scoreboard players operation .gui gui_page = .gui_back gui_page
function gui:ui/refresh

# Safety fallback: if the history stack was uninitialized or corrupted,
# always fall back to the main page so the player is never stuck.
execute unless score .gui_back gui_page matches 1..30 run function gui:features/main/page
