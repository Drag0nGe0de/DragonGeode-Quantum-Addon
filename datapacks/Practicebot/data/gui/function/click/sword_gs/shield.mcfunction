# GUI System - Click: sword_gs/shield

# Toggle the 'Shield' option (Sword General Settings), then refresh.
# Uses gold_nugget+item_model (not a real shield) so the player can't equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"sword_gs_shield"}]

function quantum:options/shield

function gui:pages/sword_general_settings
