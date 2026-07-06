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
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/main/play
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/main/statistics
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/main/credits_support

# ── Play page (gui_page 2) ── Mech Training(4), Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
# Mech Training diamond now lives at Slot 4 (top row, centered). Detect a
# click by checking whether the slot is empty (item moved to cursor).
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:4b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/mech/training
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/main/start
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/gamemode/open
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/terrain/open
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/difficulty/open
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/settings/open
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 2 unless score #s gui_page matches 1 run function gui:click/main/back

# ── WIP page (gui_page 3) ── Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 3 unless score #s gui_page matches 1 run function gui:click/main/back

# ── Gamemode page (gui_page 4) ── TnT Cart(11), Pot(12), Mace(13), Vanilla(14), OP Sword(15), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode/tnt_cart
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode/pot
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode/mace
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode/vanilla
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/gamemode/op_sword
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/main/back

# ── Terrain page (gui_page 5) ── Flat Terrain(4), Badlands(10), Desert(11), Cave(12), Plains(13), Snowy Plains(14), Mushroom(15), Netherite(16), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:4b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/flat
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:10b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/badlands
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/desert
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/cave
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/plains
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/snowy_plains
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/mushroom
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:16b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/terrain/netherite
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 5 unless score #s gui_page matches 1 run function gui:click/main/back

# ── Difficulty page (gui_page 6) ── NPC(4), Easy(11), Medium(12), Hard(13), Crazy(14), Master(15), Back(18)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:4b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/npc
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/easy
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/medium
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/hard
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/crazy
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/difficulty/master
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 6 unless score #s gui_page matches 1 run function gui:click/main/back

# ── Mech Training page (gui_page 7) ──
# Button slots depend on the current gamemode (.gm). Each slot check is gated
# by the gamemode score so only the correct handler fires for that gamemode.
# Back(18) is always present.
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:18b}].id
execute if score .gui gui_page matches 7 unless score #s gui_page matches 1 run function gui:click/main/back

# Slot 10: Cart(-3) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:10b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_neg3

# Slot 11: Cart(-2) when gm=1
# (Mace Breach Swap removed; slot 11 is filler for gm=3)
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:11b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_neg2

# Slot 12: Crystal(DTap) when gm=4, Mace(Far Pearl) when gm=3, Cart(-1) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:12b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_neg1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless score #s gui_page matches 1 run function gui:click/mech/mace_far_pearl
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/mech/crystal_dtap

# Slot 13: Crystal(Ledge) when gm=4, Mace(Stun Slam) when gm=3, Cart(Flat) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:13b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_0
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless score #s gui_page matches 1 run function gui:click/mech/mace_stun_slam
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/mech/crystal_ledge

# Slot 14: Crystal(Hit Anchor) when gm=4, Mace(Divebomb) when gm=3, Cart(1) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:14b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless score #s gui_page matches 1 run function gui:click/mech/mace_divebomb
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless score #s gui_page matches 1 run function gui:click/mech/crystal_hit_anchor

# Slot 15: Cart(2) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:15b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_2

# Slot 16: Cart(3) when gm=1
execute store success score #s gui_page run data get block -715 31 90 Items[{Slot:16b}].id
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless score #s gui_page matches 1 run function gui:click/mech/cart_3
