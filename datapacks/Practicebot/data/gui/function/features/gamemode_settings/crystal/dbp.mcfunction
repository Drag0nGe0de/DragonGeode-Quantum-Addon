# GUI System - Click: crystal_gs/dbp

# Toggle the 'Double Blast Protection' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not real netherite_boots) so the player can't
# equip it.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_dbp"}]

function quantum:options/dbp

function gui:features/gamemode_settings/crystal/page
