# GUI System - Click: npc_attr/react
# Reaction Time: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:repeater[minecraft:custom_data={gui_btn:"npc_attr_react"}]

# Adjust the value (npc:settings/toggle/react handles the math + feedback).
function npc:settings/toggle/react

# Refresh the page so the lore + value update instantly.
function gui:features/npc/attributes/page
