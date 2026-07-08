# GUI System - Click: npc_attr/jump_boost
# Jump Boost: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:slime_ball[minecraft:custom_data={gui_btn:"npc_attr_jump_boost"}]

# Adjust the value (npc:settings/toggle/jump_boost handles the math + feedback).
function npc:settings/toggle/jump_boost

# Refresh the page so the lore + value update instantly.
function gui:features/npc/attributes/page
