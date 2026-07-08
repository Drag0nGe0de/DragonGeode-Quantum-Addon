# GUI System - Click: crystal_gs/breakable

# Toggle the 'Breakable Armor' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not real cracked_stone_bricks) so the player
# can't place it. The gui_btn tag distinguishes this slot from the Mace page.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_breakable"}]

function quantum:options/breakable

function gui:features/gamemode_settings/crystal/page
