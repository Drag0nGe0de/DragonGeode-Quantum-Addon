# GUI System - Click: npc_gs/falldmg
# Toggle the 'No Fall Damage' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:honey_block[minecraft:custom_data={gui_btn:"npc_gs_falldmg"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/falldmg

# Refresh the page so the lore + glint update instantly.
function gui:features/npc/general_settings/page
