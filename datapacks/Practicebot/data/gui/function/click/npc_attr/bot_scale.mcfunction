# GUI System - Click: npc_attr/bot_scale
# Bot Scale: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:skeleton_skull[minecraft:custom_data={gui_btn:"npc_attr_bot_scale"}]

# Adjust the value (npc:settings/toggle/bot_scale handles the math + feedback).
function npc:settings/toggle/bot_scale

# Refresh the page so the lore + value update instantly.
function gui:pages/npc_attributes
