# GUI System — Barrel Click Detection (Macro)
# Called with barrel coordinates: function gui:core/detect_at {x:"-715",y:"31",z:"90"}
# Checks if any expected button slot is empty (item moved to cursor = clicked).
# Uses "unless data block ... Items[{Slot:Nb}]" which succeeds when the slot
# has no item (the path doesn't exist).

# ── Main page (gui_page 1) ── Play(12), Statistics(13), Credits & Support(14)
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/main/play
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/main/statistics
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/main/credits_support

# ── Play page (gui_page 2) ── Mech Training(4), Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/mech/training
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/main/start
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/gamemode/open
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/terrain/open
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/difficulty/open
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/settings/open
$execute if score .gui gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── WIP page (gui_page 3) ── Back(18)
$execute if score .gui gui_page matches 3 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Gamemode page (gui_page 4) ── TnT Cart(11), Pot(12), Mace(13), Vanilla(14), OP Sword(15), Back(18)
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/gamemode/tnt_cart
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/gamemode/pot
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/gamemode/mace
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/gamemode/vanilla
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/gamemode/op_sword
$execute if score .gui gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Terrain page (gui_page 5) ── Flat Terrain(4), Badlands(10), Desert(11), Cave(12), Plains(13), Snowy Plains(14), Mushroom(15), Netherite(16), Back(18)
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/terrain/flat
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:10b}] run function gui:click/terrain/badlands
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/terrain/desert
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/terrain/cave
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/terrain/plains
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/terrain/snowy_plains
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/terrain/mushroom
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:16b}] run function gui:click/terrain/netherite
$execute if score .gui gui_page matches 5 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Difficulty page (gui_page 6) ── NPC(4), Easy(11), Medium(12), Hard(13), Crazy(14), Master(15), Back(18)
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/difficulty/npc
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/difficulty/easy
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/difficulty/medium
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/difficulty/hard
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/difficulty/crazy
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/difficulty/master
$execute if score .gui gui_page matches 6 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Mech Training page (gui_page 7) ──
# Button slots depend on the current gamemode (.gm). Each slot check is gated
# by the gamemode score so only the correct handler fires for that gamemode.
# Back(18) is always present.
$execute if score .gui gui_page matches 7 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# Slot 10: Cart(-3) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:10b}] run function gui:click/mech/cart_neg3

# Slot 11: Cart(-2) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/mech/cart_neg2

# Slot 12: Crystal(DTap) when gm=4, Mace(Far Pearl) when gm=3, Cart(-1) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/mech/cart_neg1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/mech/mace_far_pearl
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/mech/crystal_dtap

# Slot 13: Crystal(Ledge) when gm=4, Mace(Stun Slam) when gm=3, Cart(Flat) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/mech/cart_0
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/mech/mace_stun_slam
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/mech/crystal_ledge

# Slot 14: Crystal(Hit Anchor) when gm=4, Mace(Divebomb) when gm=3, Cart(1) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/mech/cart_1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/mech/mace_divebomb
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/mech/crystal_hit_anchor

# Slot 15: Cart(2) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/mech/cart_2

# Slot 16: Cart(3) when gm=1
$execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:16b}] run function gui:click/mech/cart_3

# ── Settings page (gui_page 8) ── NPC Settings(12), General Settings(13), Advanced Settings(14), Back(18)
$execute if score .gui gui_page matches 8 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/settings/npc
$execute if score .gui gui_page matches 8 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/settings/general
$execute if score .gui gui_page matches 8 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/settings/advanced
$execute if score .gui gui_page matches 8 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── NPC Settings page (gui_page 9) ── Armor(11), General Settings(12), Attributes(13), Presets(14), Tutorial(15), Back(18)
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/npc/armor
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/npc/general_settings
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/npc/attributes
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/npc/presets
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/npc/tutorial
$execute if score .gui gui_page matches 9 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Armor page (gui_page 10) ──
# Top row: DBP(3), SBP(4), Prot(5)
# Middle row: Leather(11), Chainmail(12), Iron(13), Diamond(14), Netherite(15)
# Back(18)
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/armor/dbp
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/armor/sbp
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/armor/prot
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/armor/leather
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/armor/chainmail
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/armor/iron
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/armor/diamond
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/armor/netherite
$execute if score .gui gui_page matches 10 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Presets page (gui_page 11) ── Sword(12), Crystal(13), Mace(14), Back(18)
$execute if score .gui gui_page matches 11 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/preset/sword
$execute if score .gui gui_page matches 11 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/preset/crystal
$execute if score .gui gui_page matches 11 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/preset/mace
$execute if score .gui gui_page matches 11 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
