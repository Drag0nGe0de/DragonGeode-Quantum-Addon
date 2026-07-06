# GUI System - Click: npc_attr/strength
# Player Strength: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:blaze_powder[minecraft:custom_data={gui_btn:"npc_attr_strength"}]

# Adjust the value (npc:settings/toggle/strength handles the math + feedback).
function npc:settings/toggle/strength

# Refresh the page so the lore + value update instantly.
function gui:pages/npc_attributes
