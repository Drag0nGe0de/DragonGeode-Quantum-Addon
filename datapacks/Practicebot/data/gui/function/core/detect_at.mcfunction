# GUI System — Barrel Click Detection (Macro)
# Called with barrel coordinates: function gui:core/detect_at {x:"-715",y:"31",z:"90"}
# Checks if any expected button slot is empty (item moved to cursor = clicked).
# Uses "unless data block ... Items[{Slot:Nb}]" which succeeds when the slot
# has no item (the path doesn't exist).

# ── Main page (gui_page 1) ── Play(12), Statistics(13), Credits & Support(14), Extra(26)
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/main/play
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/main/statistics
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/main/credits_support
$execute if score .gui gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:26b}] run function gui:click/main/extra

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


# ── NPC General Settings page (gui_page 12) ──
# Sub-page 1: toggles in slots 0-17 + next arrow at 23 + back at 18
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/npc_gs/shield
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/npc_gs/better_shield
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/npc_gs/auto_wind
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/npc_gs/bot_sf
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/npc_gs/sf
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/npc_gs/airborne_sf
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/npc_gs/display_shield_dura
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/npc_gs/falldmg
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/npc_gs/far_pearl
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:9b}] run function gui:click/npc_gs/insta_shieldcd
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:10b}] run function gui:click/npc_gs/jreset
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/npc_gs/no_pearl_land
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/npc_gs/pflash
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/npc_gs/rain
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/npc_gs/refill
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/npc_gs/simfire
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:16b}] run function gui:click/npc_gs/strafe
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:17b}] run function gui:click/npc_gs/strafe_fb
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data block $(x) $(y) $(z) Items[{Slot:23b}] run function gui:click/npc_gs/next

# Sub-page 2: toggles in slots 0-4 + prev arrow at 21 + back at 18
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/npc_gs/stun
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/npc_gs/uhc
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/npc_gs/wind_pearl
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/npc_gs/wind
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/npc_gs/move_forward
$execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data block $(x) $(y) $(z) Items[{Slot:21b}] run function gui:click/npc_gs/prev

# ── NPC Attributes page (gui_page 13) ──
# Settings(0-9), Mode Wool(22), Reset(26), Back(18)
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/npc_attr/bot_scale
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/npc_attr/bot_slowness
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/npc_attr/bot_speed
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/npc_attr/jump_boost
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/npc_attr/reach
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/npc_attr/react
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/npc_attr/scale
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/npc_attr/slowness
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/npc_attr/speed
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:9b}] run function gui:click/npc_attr/strength
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:22b}] run function gui:click/npc_attr/mode
$execute if score .gui gui_page matches 13 unless data block $(x) $(y) $(z) Items[{Slot:26b}] run function gui:click/npc_attr/reset

# ── Extra page (gui_page 14) ── Toggle AI(11), Optimize(12), Teleports(13), Undertale Music(14), Multiple Bots(15), Back(18)
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/extra/ai
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/extra/optimize
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/extra/teleports
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/extra/music
$execute if score .gui gui_page matches 14 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/extra/bots

# ── Multiple Bots page (gui_page 15) ── Quantum(12), Herobrine(13), Notch(14), Back(18)
$execute if score .gui gui_page matches 15 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 15 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/bots/quantum
$execute if score .gui gui_page matches 15 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/bots/herobrine
$execute if score .gui gui_page matches 15 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/bots/notch

# ── Teleports page (gui_page 16) ── Main Hub(12), Advanced Settings(13), Old Kit Room(14), Back(18)
$execute if score .gui gui_page matches 16 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
$execute if score .gui gui_page matches 16 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/tp/hub
$execute if score .gui gui_page matches 16 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/tp/advanced
$execute if score .gui gui_page matches 16 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/tp/kitroom

# ── Advanced Settings hub page (gui_page 17) ── Reach(11), JReset(12), Aggro(13), Tap(14), Ping(15), Back(18)
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:11b}] run function gui:click/advanced/reach
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:12b}] run function gui:click/advanced/jreset
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:13b}] run function gui:click/advanced/aggro
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:14b}] run function gui:click/advanced/tap
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:15b}] run function gui:click/advanced/ping
$execute if score .gui gui_page matches 17 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Advanced Settings > Reach page (gui_page 18) ── Options(0-8), Back(18)
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/advanced/reach/0
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/advanced/reach/1
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/advanced/reach/2
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/advanced/reach/3
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/advanced/reach/4
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/advanced/reach/5
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/advanced/reach/6
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/advanced/reach/7
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/advanced/reach/8
$execute if score .gui gui_page matches 18 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Advanced Settings > Jump Reset Chance page (gui_page 19) ── Options(0-9), Back(18)
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/advanced/jreset/0
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/advanced/jreset/1
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/advanced/jreset/2
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/advanced/jreset/3
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/advanced/jreset/4
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/advanced/jreset/5
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/advanced/jreset/6
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/advanced/jreset/7
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/advanced/jreset/8
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:9b}] run function gui:click/advanced/jreset/9
$execute if score .gui gui_page matches 19 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Advanced Settings > Aggro Factor page (gui_page 20) ── Options(0-8), Back(18)
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/advanced/aggro/0
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/advanced/aggro/1
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/advanced/aggro/2
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/advanced/aggro/3
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/advanced/aggro/4
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/advanced/aggro/5
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/advanced/aggro/6
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/advanced/aggro/7
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/advanced/aggro/8
$execute if score .gui gui_page matches 20 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Advanced Settings > W & S-tap Chance page (gui_page 21) ── Options(0-9), Back(18)
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/advanced/tap/0
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/advanced/tap/1
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/advanced/tap/2
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/advanced/tap/3
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/advanced/tap/4
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/advanced/tap/5
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/advanced/tap/6
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/advanced/tap/7
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/advanced/tap/8
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:9b}] run function gui:click/advanced/tap/9
$execute if score .gui gui_page matches 21 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back

# ── Advanced Settings > Bot Ping page (gui_page 22) ── Options(0-9), Back(18)
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:0b}] run function gui:click/advanced/ping/0
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:1b}] run function gui:click/advanced/ping/1
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:2b}] run function gui:click/advanced/ping/2
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:3b}] run function gui:click/advanced/ping/3
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:4b}] run function gui:click/advanced/ping/4
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:5b}] run function gui:click/advanced/ping/5
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:6b}] run function gui:click/advanced/ping/6
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:7b}] run function gui:click/advanced/ping/7
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:8b}] run function gui:click/advanced/ping/8
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:9b}] run function gui:click/advanced/ping/9
$execute if score .gui gui_page matches 22 unless data block $(x) $(y) $(z) Items[{Slot:18b}] run function gui:click/main/back
