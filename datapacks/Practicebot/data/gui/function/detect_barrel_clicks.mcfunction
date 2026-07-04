# GUI System — Barrel Click Detection
# Runs as a nearby player. Checks the barrel's block data for missing buttons.
# When a player clicks an item out of a barrel, it goes to their CURSOR —
# which is NOT part of inventory.*. This function catches those clicks by
# checking whether the expected item is still in its slot.
#
# Method: execute store success + data get.  If the slot is empty the
# data-get fails, success stores 0, and "unless score #s ... matches 1"
# passes — meaning the button was taken.

# ── Main page (gui_page 1) ── Play(12), Statistics(13), Credits & Support(14)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/play
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/statistics
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/credits_support

# ── Play page (gui_page 2) ── Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/start
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/gamemode
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/terrain
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/difficulty
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/settings
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/back

# ── WIP page (gui_page 3) ── Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 3 unless score #s gui_page matches 1 run function gui:click/back