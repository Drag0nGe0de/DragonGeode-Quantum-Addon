# GUI System - Click: npc_gs/rain
# Toggle the 'Rain' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:water_bucket[minecraft:custom_data={gui_btn:"npc_gs_rain"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/rain

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
