# GUI System - Click: extra/music
# Toggle Undertale music on/off, then refresh the Extra page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:music_disc_13[minecraft:custom_data={gui_btn:"extra_music"}]

# quantum:options/music {"music":1} toggles Undertale on if off, or off if already 1.
function quantum:options/music {"music":1}

# Refresh the page so the lore + glint update instantly.
function gui:pages/extra
