# GUI System - Click: mace_gs/elytra
# Toggle the 'Elytra' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real elytra) so the player can't equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_elytra"}]

function quantum:options/elytra

function gui:features/gamemode_settings/mace/page
