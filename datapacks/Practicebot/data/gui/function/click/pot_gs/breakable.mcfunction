# GUI System - Click: pot_gs/breakable

# Toggle the 'Breakable Armor' option (Pot General Settings), then refresh.
# Uses gold_nugget+item_model (not real cracked_stone_bricks) so the player
# can't place it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"pot_gs_breakable"}]

function quantum:options/breakable

function gui:pages/pot_general_settings
