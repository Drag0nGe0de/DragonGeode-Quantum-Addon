# GUI System - Click: npc_gs/simfire
# Toggle the 'Simulate Fire Tick' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:fire_charge[minecraft:custom_data={gui_btn:"npc_gs_simfire"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/simfire

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
