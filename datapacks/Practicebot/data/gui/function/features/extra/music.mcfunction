# GUI System - Click: extra/music
# Navigate to the Music page (page 25) where the player can pick between
# Undertale Music (music=1) and Otherside (music=2).
clear @s minecraft:jukebox[minecraft:custom_data={gui_btn:"extra_music"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page
function gui:features/music/page
