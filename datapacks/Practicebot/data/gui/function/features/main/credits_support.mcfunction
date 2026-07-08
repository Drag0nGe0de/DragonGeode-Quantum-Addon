# GUI System - Click: credits_support
# Navigate to the Support & Credits page (page 23).
clear @s minecraft:gold_ingot[minecraft:custom_data={gui_btn:"credits_support"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/credits/support
