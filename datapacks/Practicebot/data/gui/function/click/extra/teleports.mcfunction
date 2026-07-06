# GUI System - Click: extra/teleports
# Navigate to the Teleports page (page 16).
clear @s minecraft:end_portal_frame[minecraft:custom_data={gui_btn:"extra_teleports"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/teleports
