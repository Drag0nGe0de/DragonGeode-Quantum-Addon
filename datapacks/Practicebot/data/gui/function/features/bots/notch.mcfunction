# GUI System - Click: bots/notch
# Toggle the Notch bot on/off, then refresh the Multiple Bots page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"bots_notch"}]

# Flip the toggle (quantum:options/players handles on->off / off->on + feedback).
function quantum:options/players {"player":"Notch"}

# Refresh the page so the lore + glint update instantly.
function gui:features/bots/page
