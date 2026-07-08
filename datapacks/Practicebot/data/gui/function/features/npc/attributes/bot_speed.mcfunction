# GUI System - Click: npc_attr/bot_speed
# Bot Speed: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:sugar[minecraft:custom_data={gui_btn:"npc_attr_bot_speed"}]

# Adjust the value (npc:settings/toggle/bot_speed handles the math + feedback).
function npc:settings/toggle/bot_speed

# Refresh the page so the lore + value update instantly.
function gui:features/npc/attributes/page
