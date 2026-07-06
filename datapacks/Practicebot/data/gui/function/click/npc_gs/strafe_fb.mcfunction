# GUI System - Click: npc_gs/strafe_fb
# Toggle the 'Strafe Forward-Back' NPC setting, then refresh the current General Settings page.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:chainmail_boots[minecraft:custom_data={gui_btn:"npc_gs_strafe_fb"}]

# Flip the toggle (npc:settings/toggle/<name> handles on->off / off->on + feedback).
function npc:settings/toggle/strafe_fb

# Refresh the page so the lore + glint update instantly.
function gui:pages/npc_general_settings
