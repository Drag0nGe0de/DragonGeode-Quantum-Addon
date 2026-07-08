# GUI System - Click: sword_gs/stun

# Toggle the 'Stunning' option (Sword General Settings), then refresh.
# Uses gold_nugget+item_model (not a real netherite_axe) so the player can't
# equip or use it as a weapon if it briefly ends up in their inventory.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"sword_gs_stun"}]

function quantum:options/stun

function gui:features/gamemode_settings/sword/page
