# GUI System - Click: crystal_gs/shield

# Toggle the 'Shield' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not a real shield) so the player can't equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_shield"}]

function quantum:options/shield

function gui:pages/crystal_general_settings
