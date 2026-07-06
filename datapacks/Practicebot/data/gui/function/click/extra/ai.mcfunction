# GUI System - Click: extra/ai
# Toggle the AI (hardcode) setting, then refresh the Extra page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"extra_ai"}]

# Flip the toggle (quantum:options/hardcode handles on->off / off->on + feedback).
function quantum:options/hardcode

# Refresh the page so the head profile + lore + glint update instantly.
function gui:pages/extra
