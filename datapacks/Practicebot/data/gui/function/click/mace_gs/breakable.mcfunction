# GUI System - Click: mace_gs/breakable
# Toggle the 'Breakable Armor' option (Mace General Settings), then refresh.
# The icon is a damaged elytra; the underlying item id is still elytra, so the
# clear predicate matches elytra. Use a separate gui_btn tag from the Elytra
# toggle (mace_gs_elytra vs mace_gs_breakable) so the two slots are
# distinguishable when the player clicks.
clear @s minecraft:elytra[minecraft:custom_data={gui_btn:"mace_gs_breakable"}]

function quantum:options/breakable

function gui:pages/mace_general_settings
