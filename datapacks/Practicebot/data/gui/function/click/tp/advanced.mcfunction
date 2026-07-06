# GUI System - Click: tp/advanced
# Teleport the target player to the Advanced Settings room.
# This is a TOGGLE button (stays on the page) — it does NOT navigate away.
clear @s minecraft:nether_star[minecraft:custom_data={gui_btn:"tp_advanced"}]

# Teleport the target player to the Advanced Settings room (facing east).
tp @p[tag=xlib_target] -594 64.00 17.50 90 0

# Refresh the page so the button reappears instantly.
function gui:pages/teleports
