# GUI System - Click: tp/kitroom
# Teleport the target player to the Old Kit Room.
# This is a TOGGLE button (stays on the page) — it does NOT navigate away.
clear @s minecraft:chest[minecraft:custom_data={gui_btn:"tp_kitroom"}]

# Teleport the target player to the Old Kit Room (facing north).
tp @p[tag=xlib_target] -630.5 78.00 17.5 180 0

# Refresh the page so the button reappears instantly.
function gui:features/teleports/page
