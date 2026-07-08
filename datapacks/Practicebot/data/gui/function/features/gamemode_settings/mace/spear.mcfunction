# GUI System - Click: mace_gs/spear
# Toggle the 'Spear' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real netherite_spear) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_spear"}]

function quantum:options/spear

function gui:features/gamemode_settings/mace/page
