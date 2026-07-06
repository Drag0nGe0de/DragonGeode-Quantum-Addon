# GUI System - Click: npc_attr/reset
# Reset all NPC attributes to their default values.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"npc_attr_reset"}]

# Run the reset function (resets all attribute scores to defaults + feedback).
function npc:settings/reset_custom

# Refresh the page so the lore + values update instantly.
function gui:pages/npc_attributes
