# GUI System - Click: tnt_gs/resistance

# Toggle the 'Resistance' option (TNT Cart General Settings), then refresh.
# Uses gold_nugget+item_model (not a real turtle_helmet) so the player can't
# equip it. Scoreboard is .res (not .resistance).
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"tnt_gs_resistance"}]

function quantum:options/resistance

function gui:pages/tnt_general_settings
