# GUI System - Click: tnt_gs/axe

# Toggle the 'Axe' option (TNT Cart General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_axe) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"tnt_gs_axe"}]

function quantum:options/axe

function gui:pages/tnt_general_settings
