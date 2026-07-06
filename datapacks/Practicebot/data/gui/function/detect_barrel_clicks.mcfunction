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

# ── Play page (gui_page 2) ── Mech Training(4), Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
# Mech Training diamond now lives at Slot 4 (top row, centered). Detect a
# click by checking whether the slot is empty (item moved to cursor).
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:4b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/mech_training
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

# ── Gamemode page (gui_page 4) ── TnT Cart(11), Pot(12), Mace(13), Vanilla(14), OP Sword(15), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode_tnt_cart
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode_pot
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode_mace
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode_vanilla
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode_op_sword
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/back

# ── Terrain page (gui_page 5) ── Badlands(10), Desert(11), Cave(12), Plains(13), Snowy Plains(14), Mushroom(15), Netherite(16), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:10b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_badlands
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_desert
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_cave
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_plains
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_snowy_plains
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_mushroom
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:16b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain_netherite
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/back

# ── Difficulty page (gui_page 6) ── NPC(4), Easy(11), Medium(12), Hard(13), Crazy(14), Master(15), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:4b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_npc
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_easy
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_medium
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_hard
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_crazy
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty_master
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/back

# ── Mech Training page (gui_page 7) ── Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 7 unless score #s gui_page matches 1 run function gui:click/back
