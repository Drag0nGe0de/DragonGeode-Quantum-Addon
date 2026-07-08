# GUI System - Click: tp/hub
# Teleport the target player to the Main Hub.
# This is a TOGGLE button (stays on the page) — it does NOT navigate away.
clear @s minecraft:compass[minecraft:custom_data={gui_btn:"tp_hub"}]

# Teleport the target player to the Main Hub.
tp @p[tag=xlib_target] -656.5 55.00 76.50

# Refresh the page so the button reappears instantly.
function gui:features/teleports/page
