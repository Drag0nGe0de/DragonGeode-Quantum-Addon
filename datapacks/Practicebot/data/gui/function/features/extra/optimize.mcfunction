# GUI System - Click: extra/optimize
# Toggle the Optimize (fast) setting, then refresh the Extra page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"extra_optimize"}]

# Flip the toggle (quantum:options/fast handles on->off / off->on + feedback).
function quantum:options/fast

# Refresh the page so the lore + glint update instantly.
function gui:features/extra/page
