# GUI System - Click: crystal_gs/triple_tap

# Toggle the 'Ping Pongs' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not a real diamond_sword) so the player can't
# use it as a weapon.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_triple_tap"}]

function quantum:options/triple_tap

function gui:features/gamemode_settings/crystal/page
