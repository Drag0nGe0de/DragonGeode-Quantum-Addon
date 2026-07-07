# GUI System - Click: mace_gs/resistance
# Toggle the 'Resistance' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real turtle_helmet) so the player can't
# equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_resistance"}]

function quantum:options/resistance

function gui:pages/mace_general_settings
