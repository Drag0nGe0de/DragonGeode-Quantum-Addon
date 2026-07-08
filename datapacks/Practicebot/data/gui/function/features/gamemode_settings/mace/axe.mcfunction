# GUI System - Click: mace_gs/axe
# Toggle the 'Axe' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_axe) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_axe"}]

function quantum:options/axe

function gui:features/gamemode_settings/mace/page
