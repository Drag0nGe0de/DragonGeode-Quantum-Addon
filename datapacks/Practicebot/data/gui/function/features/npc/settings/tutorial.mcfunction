# GUI System - Click: npc_tutorial
# Runs the NPC tutorial (displays the tutorial message). Single-use, no toggle.
clear @s minecraft:writable_book[minecraft:custom_data={gui_btn:"npc_tutorial"}]

# Run the tutorial function (displays the tutorial message to the player)
function npc:tutorial

# Return to NPC settings page
function gui:features/npc/settings/page
