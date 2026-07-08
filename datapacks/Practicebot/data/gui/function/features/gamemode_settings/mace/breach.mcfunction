# GUI System - Click: mace_gs/breach
# Toggle the 'Breach Swap' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real mace) so the player can't use it as
# a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_breach"}]

function quantum:options/breach

function gui:features/gamemode_settings/mace/page
