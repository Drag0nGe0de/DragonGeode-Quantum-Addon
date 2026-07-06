# GUI System - Click: npc_gs/shield
# Toggle the 'Shield' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:shield[minecraft:custom_data={gui_btn:"npc_gs_shield"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/shield

# Refresh the page so the lore + glint update instantly.
function gui:pages/npc_general_settings
