# GUI System - Click: npc_attr/reach
# Reach: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:fishing_rod[minecraft:custom_data={gui_btn:"npc_attr_reach"}]

# Adjust the value (npc:settings/toggle/reach handles the math + feedback).
function npc:settings/toggle/reach

# Refresh the page so the lore + value update instantly.
function gui:pages/npc_attributes
