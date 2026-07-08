# GUI System - Click: pot_gs/axe

# Toggle the 'Axe' option (Pot General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_axe) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"pot_gs_axe"}]

function quantum:options/axe

function gui:pages/pot_general_settings
