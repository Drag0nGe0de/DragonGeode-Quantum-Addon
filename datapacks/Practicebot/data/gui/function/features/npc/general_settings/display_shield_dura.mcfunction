# GUI System - Click: npc_gs/display_shield_dura
# Toggle the 'Display Shield Durability' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:compass[minecraft:custom_data={gui_btn:"npc_gs_display_shield_dura"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/display_shield_dura

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
