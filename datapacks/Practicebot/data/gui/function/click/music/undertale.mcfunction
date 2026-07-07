# GUI System - Click: music/undertale
# Toggle Undertale Music on/off, then refresh the Music page.
# quantum:options/music {"music":1} turns Undertale on if .music != 1, or off
# if .music == 1 — so clicking the selected track unselects it (no glint,
# no "Selected" line after refresh).
clear @s minecraft:music_disc_13[minecraft:custom_data={gui_btn:"music_undertale"}]

# Run the toggle function.
function quantum:options/music {"music":1}

# Refresh the page so the glint + "Selected" lore update instantly.
function gui:pages/music
