# GUI System - Click: npc_gs/bot_sf
# Toggle the 'Bot Slowfall' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:phantom_membrane[minecraft:custom_data={gui_btn:"npc_gs_bot_sf"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/bot_sf

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
