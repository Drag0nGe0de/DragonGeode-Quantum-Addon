# GUI System - Click: music/otherside
# Toggle Otherside on/off, then refresh the Music page.
# quantum:options/music {"music":2} turns Otherside on if .music != 2, or off
# if .music == 2 — so clicking the selected track unselects it (no glint,
# no "Selected" line after refresh).
clear @s minecraft:music_disc_otherside[minecraft:custom_data={gui_btn:"music_otherside"}]

# Run the toggle function.
function quantum:options/music {"music":2}

# Refresh the page so the glint + "Selected" lore update instantly.
function gui:pages/music
