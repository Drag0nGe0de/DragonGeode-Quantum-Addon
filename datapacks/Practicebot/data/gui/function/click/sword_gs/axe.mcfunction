# GUI System - Click: sword_gs/axe

# Toggle the 'Axe' option (Sword General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_axe) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"sword_gs_axe"}]

function quantum:options/axe

function gui:pages/sword_general_settings
