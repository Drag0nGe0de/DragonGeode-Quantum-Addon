# GUI System - Click: crystal_gs/resistance

# Toggle the 'Resistance' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not a real turtle_helmet) so the player can't
# equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_resistance"}]

function quantum:options/resistance

function gui:pages/crystal_general_settings
