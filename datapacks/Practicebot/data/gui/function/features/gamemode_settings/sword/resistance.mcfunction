# GUI System - Click: sword_gs/resistance

# Toggle the 'Resistance' option (Sword General Settings), then refresh.
# Uses gold_nugget+item_model (not a real turtle_helmet) so the player can't
# equip it. Scoreboard is .res (not .resistance).
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"sword_gs_resistance"}]

function quantum:options/resistance

function gui:features/gamemode_settings/sword/page
