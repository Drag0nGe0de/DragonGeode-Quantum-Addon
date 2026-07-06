# GUI System - Click: npc_tutorial
# Toggles the NPC tutorial on/off based on .disable_tutorial npc score.
# 0 = tutorial enabled, 1 = tutorial disabled.
clear @s minecraft:writable_book[minecraft:custom_data={gui_btn:"npc_tutorial"}]

# Set a lock flag that prevents the handler from running again until the lock
# is cleared by tick.mcfunction (2 ticks later). This prevents double-toggle
# caused by the cursor item being placed back into the barrel.
scoreboard players set .npc_tutorial_lock gui_page 2

# If tutorial is disabled (1), enable it
execute if score .disable_tutorial npc matches 1 run function npc:settings/on/enable_tutorial
# If tutorial is enabled (0), disable it
execute if score .disable_tutorial npc matches 0 run function npc:settings/off/disable_tutorial

# Return to NPC settings page (refreshes the tutorial button lore)
function gui:pages/npc_settings
