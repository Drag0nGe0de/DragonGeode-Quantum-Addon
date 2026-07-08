# GUI System - Click: npc_attr/speed
# Player Speed: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_attr_speed"}]

# Adjust the value (npc:settings/toggle/speed handles the math + feedback).
function npc:settings/toggle/speed

# Refresh the page so the lore + value update instantly.
function gui:features/npc/attributes/page
