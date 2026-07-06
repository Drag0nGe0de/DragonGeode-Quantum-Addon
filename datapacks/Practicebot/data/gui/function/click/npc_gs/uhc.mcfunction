# GUI System - Click: npc_gs/uhc
# Toggle the 'UHC' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:golden_apple[minecraft:custom_data={gui_btn:"npc_gs_uhc"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/uhc

# Refresh the page so the lore + glint update instantly.
function gui:pages/npc_general_settings
