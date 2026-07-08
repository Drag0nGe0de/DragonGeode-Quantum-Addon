# GUI System - Click: npc_gs/wind_pearl
# Toggle the 'Wind Pearl' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:wind_charge[minecraft:custom_data={gui_btn:"npc_gs_wind_pearl"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/wind_pearl

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
