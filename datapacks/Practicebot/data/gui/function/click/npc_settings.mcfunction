# GUI System — Click: npc_settings
# Remove the button item from the player's inventory, then load the WIP page.
clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"npc_settings"}]
function gui:pages/wip
