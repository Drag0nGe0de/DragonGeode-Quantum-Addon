# GUI System - Click: mace_gs/breakable
# Toggle the 'Breakable Armor' option (Mace General Settings), then refresh.
# Uses gold_nugget+item_model (not a real elytra) so the player can't equip it.
# The gui_btn tag (mace_gs_breakable) distinguishes this slot from the Elytra toggle.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"mace_gs_breakable"}]

function quantum:options/breakable

function gui:features/gamemode_settings/mace/page
