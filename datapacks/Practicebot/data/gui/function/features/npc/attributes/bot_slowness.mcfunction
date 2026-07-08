# GUI System - Click: npc_attr/bot_slowness
# Bot Slowness: adjust by .var var (1=increase, -1=decrease) then refresh.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:fermented_spider_eye[minecraft:custom_data={gui_btn:"npc_attr_bot_slowness"}]

# Adjust the value (npc:settings/toggle/bot_slowness handles the math + feedback).
function npc:settings/toggle/bot_slowness

# Refresh the page so the lore + value update instantly.
function gui:features/npc/attributes/page
