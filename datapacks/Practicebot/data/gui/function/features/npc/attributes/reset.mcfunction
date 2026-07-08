# GUI System - Click: npc_attr/reset
# Reset all NPC attributes to their default values.
# This is a TOGGLE button — it does NOT navigate away from the page.
clear @s minecraft:red_stained_glass[minecraft:custom_data={gui_btn:"npc_attr_reset"}]

# Run the reset function (resets all attribute scores to defaults + feedback).
function npc:settings/reset_custom

# Restore increase mode (reset_custom sets .var var to 0 for toggle math).
# Per gui:core/init, the default mode is 1 (increase). Without this, the page
# would show "Mode: Decrease" (red wool) and "Click to Decrease" lore lines,
# making the visuals look like they didn't reset.
scoreboard players set .var var 1

# Refresh the page so the lore + values update instantly to match the
# reset settings (reads the new scoreboard values and rebuilds all lore lines).
function gui:features/npc/attributes/page
