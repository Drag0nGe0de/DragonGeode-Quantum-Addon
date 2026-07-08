# GUI System - Click: npc_gs/no_pearl_land
# Toggle the 'Pearls Don't Land' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:ender_eye[minecraft:custom_data={gui_btn:"npc_gs_no_pearl_land"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/no_pearl_land

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
