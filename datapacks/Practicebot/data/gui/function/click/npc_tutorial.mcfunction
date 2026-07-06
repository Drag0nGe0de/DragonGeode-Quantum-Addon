# GUI System - Click: npc_tutorial
# Toggles the NPC tutorial on/off based on .disable_tutorial npc score.
# 0 = tutorial enabled, 1 = tutorial disabled.
clear @s minecraft:writable_book[minecraft:custom_data={gui_btn:"npc_tutorial"}]

# If tutorial is disabled (1), enable it
execute if score .disable_tutorial npc matches 1 run function npc:settings/on/enable_tutorial
# If tutorial is enabled (0), disable it
execute if score .disable_tutorial npc matches 0 run function npc:settings/off/disable_tutorial

# Return to NPC settings page (refreshes the tutorial button lore)
function gui:pages/npc_settings
