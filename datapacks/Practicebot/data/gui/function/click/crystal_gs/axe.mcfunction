# GUI System - Click: crystal_gs/axe

# Toggle the 'Axe' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_axe) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_axe"}]

function quantum:options/axe

function gui:pages/crystal_general_settings
