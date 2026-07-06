# GUI System - Click: armor_prot
clear @s minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"armor_prot"}]

# Run the NPC settings toggle function
function npc:settings/toggle/prot

# Return to NPC settings page
function gui:pages/npc_settings
