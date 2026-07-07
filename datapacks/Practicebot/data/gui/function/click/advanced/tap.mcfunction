# GUI System - Click: advanced_tap
# Navigate to the W & S-tap Chance sub-page (page 21).
clear @s minecraft:elytra[minecraft:custom_data={gui_btn:"advanced_tap"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:pages/advanced/tap
