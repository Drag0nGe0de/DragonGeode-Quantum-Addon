# GUI System - Click: npc_gs/sf
# Toggle the 'Player Slowfall' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:cobweb[minecraft:custom_data={gui_btn:"npc_gs_sf"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/sf

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
