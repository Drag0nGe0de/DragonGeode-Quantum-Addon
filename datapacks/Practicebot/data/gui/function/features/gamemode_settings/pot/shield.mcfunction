# GUI System - Click: pot_gs/shield

# Toggle the 'Shield' option (Pot General Settings), then refresh.
# Uses gold_nugget+item_model (not a real shield) so the player can't equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"pot_gs_shield"}]

function quantum:options/shield

function gui:features/gamemode_settings/pot/page
