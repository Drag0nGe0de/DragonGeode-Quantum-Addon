# GUI System - Click: npc_gs/strafe
# Toggle the 'Strafe Left-Right' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"npc_gs_strafe"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/strafe

# Refresh the page so the lore + glint update instantly.
function gui:pages/npc_general_settings
