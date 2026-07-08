# GUI System — Chest Minecart Click Detection
# Runs as each holding player. Targets the nearest chest minecart via
# @e[type=chest_minecart,tag=gui_chest,sort=nearest,limit=1].
# Same slot layout as the barrel (Slots 0..26).
# Uses "unless data entity ... Items[{Slot:Nb}]" which succeeds when the slot
# has no item (the path doesn't exist).

# ── Main page (gui_page 1) ── Play(12), Statistics(13), Credits & Support(14), Extra(26)
execute if score .gui gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/main/play
execute if score .gui gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/main/statistics
execute if score .gui gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/main/credits_support
execute if score .gui gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:26b}] run function gui:features/main/extra

# ── Play page (gui_page 2) ── Mech Training(4), Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/mech/training
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/play/start
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode/open
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/terrain/open
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/difficulty/open
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/settings/open
execute if score .gui gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── WIP page (gui_page 3) ── Back(18)
execute if score .gui gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Gamemode page (gui_page 4) ── TnT Cart(11), Pot(12), Mace(13), Vanilla(14), OP Sword(15), Back(18)
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode/tnt_cart
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode/pot
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode/mace
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode/vanilla
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode/op_sword
execute if score .gui gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Terrain page (gui_page 5) ── Flat Terrain(4), Badlands(10), Desert(11), Cave(12), Plains(13), Snowy Plains(14), Mushroom(15), Netherite(16), Back(18)
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/terrain/flat
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/terrain/badlands
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/terrain/desert
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/terrain/cave
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/terrain/plains
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/terrain/snowy_plains
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/terrain/mushroom
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/terrain/netherite
execute if score .gui gui_page matches 5 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Difficulty page (gui_page 6) ── NPC(4), Easy(11), Medium(12), Hard(13), Crazy(14), Master(15), Back(18)
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/difficulty/npc
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/difficulty/easy
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/difficulty/medium
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/difficulty/hard
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/difficulty/crazy
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/difficulty/master
execute if score .gui gui_page matches 6 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Mech Training page (gui_page 7) ──
# Button slots depend on the current gamemode (.gm). Each slot check is gated
# by the gamemode score so only the correct handler fires for that gamemode.
# Back(18) is always present.
execute if score .gui gui_page matches 7 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# Slot 10: Cart(-3) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/mech/cart_neg3

# Slot 11: Cart(-2) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/mech/cart_neg2

# Slot 12: Crystal(DTap) when gm=4, Mace(Far Pearl) when gm=3, Cart(-1) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/cart_neg1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/mace_far_pearl
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/mech/crystal_dtap

# Slot 13: Crystal(Ledge) when gm=4, Mace(Stun Slam) when gm=3, Cart(Flat) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/cart_0
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/mace_stun_slam
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/mech/crystal_ledge

# Slot 14: Crystal(Hit Anchor) when gm=4, Mace(Divebomb) when gm=3, Cart(1) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/cart_1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 3 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/mace_divebomb
execute if score .gui gui_page matches 7 if score .gm gui_page matches 4 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/mech/crystal_hit_anchor

# Slot 15: Cart(2) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/mech/cart_2

# Slot 16: Cart(3) when gm=1
execute if score .gui gui_page matches 7 if score .gm gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/mech/cart_3

# ── Settings page (gui_page 8) ── NPC Settings(12), General Settings(13), Advanced Settings(14), Back(18)
execute if score .gui gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/settings/npc
execute if score .gui gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/settings/general
execute if score .gui gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/settings/advanced
execute if score .gui gui_page matches 8 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── NPC Settings page (gui_page 9) ── Armor(11), General Settings(12), Attributes(13), Presets(14), Tutorial(15), Back(18)
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/npc/settings/armor
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/npc/settings/general_settings
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/npc/settings/attributes
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/npc/settings/presets
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/npc/settings/tutorial
execute if score .gui gui_page matches 9 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Armor page (gui_page 10) ──
# Top row: DBP(3), SBP(4), Prot(5)
# Middle row: Leather(11), Chainmail(12), Iron(13), Diamond(14), Netherite(15)
# Back(18)
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/armor/dbp
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/armor/sbp
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/armor/prot
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/armor/leather
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/armor/chainmail
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/armor/iron
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/armor/diamond
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/armor/netherite
execute if score .gui gui_page matches 10 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Presets page (gui_page 11) ── Sword(12), Crystal(13), Mace(14), Back(18)
execute if score .gui gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/presets/sword
execute if score .gui gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/presets/crystal
execute if score .gui gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/presets/mace
execute if score .gui gui_page matches 11 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back


# ── NPC General Settings page (gui_page 12) ──
# Sub-page 1: toggles in slots 0-17 + next arrow at 23 + back at 18
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/general_settings/shield
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/general_settings/better_shield
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/general_settings/auto_wind
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/general_settings/bot_sf
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/general_settings/sf
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/npc/general_settings/airborne_sf
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/npc/general_settings/display_shield_dura
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/npc/general_settings/falldmg
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/npc/general_settings/far_pearl
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/npc/general_settings/insta_shieldcd
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/npc/general_settings/jreset
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/npc/general_settings/no_pearl_land
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/npc/general_settings/pflash
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/npc/general_settings/rain
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/npc/general_settings/refill
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/npc/general_settings/simfire
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/npc/general_settings/strafe
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/npc/general_settings/strafe_fb
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/npc/general_settings/next

# Sub-page 2: toggles in slots 0-4 + prev arrow at 21 + back at 18
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/general_settings/stun
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/general_settings/uhc
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/general_settings/wind_pearl
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/general_settings/wind
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/general_settings/move_forward
execute if score .gui gui_page matches 12 if score .npc_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/npc/general_settings/prev

# ── NPC Attributes page (gui_page 13) ──
# Settings(0-9), Mode Wool(22), Reset(26), Back(18)
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/npc/attributes/bot_scale
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/npc/attributes/bot_slowness
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/npc/attributes/bot_speed
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/npc/attributes/jump_boost
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/npc/attributes/reach
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/npc/attributes/react
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/npc/attributes/scale
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/npc/attributes/slowness
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/npc/attributes/speed
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/npc/attributes/strength
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:22b}] run function gui:features/npc/attributes/mode
execute if score .gui gui_page matches 13 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:26b}] run function gui:features/npc/attributes/reset

# ── Extra page (gui_page 14) ── Toggle AI(11), Optimize(12), Teleports(13), Undertale Music(14), Multiple Bots(15), Back(18)
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/extra/ai
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/extra/optimize
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/extra/teleports
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/extra/music
execute if score .gui gui_page matches 14 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/extra/bots

# ── Multiple Bots page (gui_page 15) ── Quantum(12), Herobrine(13), Notch(14), Back(18)
execute if score .gui gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/bots/quantum
execute if score .gui gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/bots/herobrine
execute if score .gui gui_page matches 15 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/bots/notch

# ── Teleports page (gui_page 16) ── Main Hub(12), Advanced Settings(13), Old Kit Room(14), Back(18)
execute if score .gui gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/teleports/hub
execute if score .gui gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/teleports/advanced
execute if score .gui gui_page matches 16 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/teleports/kitroom

# ── Advanced Settings hub page (gui_page 17) ── Reach(11), JReset(12), Aggro(13), Tap(14), Ping(15), Back(18)
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/reach/open
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/jreset/open
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/aggro/open
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/tap/open
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/ping/open
execute if score .gui gui_page matches 17 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Advanced Settings > Reach page (gui_page 18) ── Options in middle row (9-17), Back(18)
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/advanced/reach/0
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/advanced/reach/1
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/reach/2
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/reach/3
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/reach/4
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/reach/5
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/reach/6
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/advanced/reach/7
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/advanced/reach/8
execute if score .gui gui_page matches 18 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Advanced Settings > Jump Reset Chance page (gui_page 19) ── 5 top (2-6) + 5 middle (11-15), Back(18)
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/jreset/0
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/jreset/1
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/jreset/2
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/jreset/3
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/jreset/4
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/jreset/5
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/jreset/6
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/jreset/7
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/jreset/8
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/jreset/9
execute if score .gui gui_page matches 19 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Advanced Settings > Aggro Factor page (gui_page 20) ── Options in middle row (9-17), Back(18)
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/advanced/aggro/0
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/advanced/aggro/1
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/aggro/2
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/aggro/3
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/aggro/4
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/aggro/5
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/aggro/6
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/advanced/aggro/7
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/advanced/aggro/8
execute if score .gui gui_page matches 20 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Advanced Settings > W & S-tap Chance page (gui_page 21) ── 5 top (2-6) + 5 middle (11-15), Back(18)
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/tap/0
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/tap/1
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/tap/2
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/tap/3
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/tap/4
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/tap/5
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/tap/6
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/tap/7
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/tap/8
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/tap/9
execute if score .gui gui_page matches 21 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Advanced Settings > Bot Ping page (gui_page 22) ── 5 top (2-6) + 5 middle (11-15), Back(18)
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/advanced/ping/0
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/advanced/ping/1
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/advanced/ping/2
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/advanced/ping/3
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/advanced/ping/4
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/advanced/ping/5
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/advanced/ping/6
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/advanced/ping/7
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/advanced/ping/8
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/advanced/ping/9
execute if score .gui gui_page matches 22 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Support & Credits page (gui_page 23) ── Discord(12), Important People(14), Back(18)
execute if score .gui gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/credits/discord
execute if score .gui gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/credits/open_people
execute if score .gui gui_page matches 23 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Important People page (gui_page 24) ── People(0-6), Back(18)
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:core/return_filler
execute if score .gui gui_page matches 24 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Music page (gui_page 25) ── Undertale(12), Otherside(14), Back(18)
execute if score .gui gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/music/undertale
execute if score .gui gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/music/otherside
execute if score .gui gui_page matches 25 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── Mace General Settings page (gui_page 26), sub-page 1 ── Toggles(0-17), Back(18), Next(23)
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/mace/armor
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/mace/breach
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/mace/spear
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/mace/wind_pearl
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/mace/elytra
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/mace/far_pearl
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/mace/no_pearl_land
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/mace/cobweb
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/mace/water
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/mace/no_fall
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/mace/stun
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/mace/pcrit
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/mace/crit
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/mace/strafe
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/mace/stap
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/mace/jreset
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/mace/shield
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/mace/shieldcd
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/mace/next

# ── Mace General Settings page (gui_page 26), sub-page 2 ── Toggles(0-7), Back(18), Prev(21)
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/mace/refill
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/mace/buffs
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/mace/small
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/mace/random
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/mace/breakable
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/mace/resistance
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/mace/axe
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/mace/healing
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 26 if score .mace_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/mace/prev

# ── Crystal General Settings page (gui_page 27), sub-page 1 ── Toggles(0-17), Back(18), Next(23)
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/crystal/armor
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/crystal/playstyle
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/crystal/crystals
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/crystal/anchors
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/crystal/dbp
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/crystal/inf_tot
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/crystal/oldkb
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/crystal/better_npc_shield
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/crystal/shield
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/crystal/cobweb
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/crystal/stun
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/crystal/blocks_drop
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/crystal/holding
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/crystal/strafe
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/crystal/slowfall
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/crystal/refill
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/crystal/buffs
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/crystal/small
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/crystal/next

# ── Crystal General Settings page (gui_page 27), sub-page 2 ── Toggles(0-4), Back(18), Prev(21)
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/crystal/breakable
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/crystal/resistance
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/crystal/axe
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/crystal/prompt_start
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/crystal/triple_tap
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 27 if score .crystal_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/crystal/prev

# ── Sword General Settings page (gui_page 28), sub-page 1 ── Toggles(0-17), Back(18), Next(23)
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/sword/armor
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/sword/shield
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/sword/resistance
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/sword/breakable
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/sword/no_fall
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/sword/cobweb
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/sword/stun
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/sword/pcrit
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/sword/crit
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/sword/scrit
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/sword/strafe
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/sword/stap
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/sword/jreset
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/sword/axe
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/sword/refill
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/sword/buffs
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/sword/water
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/sword/lava
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/sword/next

# ── Sword General Settings page (gui_page 28), sub-page 2 ── Toggles(0-2), Back(18), Prev(21)
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/sword/healing
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/sword/small
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/sword/random
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 28 if score .sword_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/sword/prev

# ── Pot General Settings page (gui_page 29), sub-page 1 ── Toggles(0-16), Back(18)
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/pot/armor
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/pot/shield
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/pot/resistance
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/pot/breakable
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/pot/no_fall
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/pot/stun
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/pot/pcrit
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/pot/crit
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/pot/scrit
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/pot/strafe
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/pot/stap
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/pot/jreset
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/pot/axe
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/pot/refill
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/pot/buffs
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/pot/small
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/pot/random
execute if score .gui gui_page matches 29 if score .pot_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back

# ── TNT Cart General Settings page (gui_page 30), sub-page 1 ── Toggles(0-17), Back(18), Next(23)
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/tnt/armor
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/tnt/shield
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/tnt/resistance
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:3b}] run function gui:features/gamemode_settings/tnt/breakable
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:4b}] run function gui:features/gamemode_settings/tnt/no_fall
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:5b}] run function gui:features/gamemode_settings/tnt/cobweb
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:6b}] run function gui:features/gamemode_settings/tnt/stun
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:7b}] run function gui:features/gamemode_settings/tnt/pcrit
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:8b}] run function gui:features/gamemode_settings/tnt/crit
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:9b}] run function gui:features/gamemode_settings/tnt/blocks_drop
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:10b}] run function gui:features/gamemode_settings/tnt/strafe
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:11b}] run function gui:features/gamemode_settings/tnt/stap
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:12b}] run function gui:features/gamemode_settings/tnt/jreset
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:13b}] run function gui:features/gamemode_settings/tnt/axe
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:14b}] run function gui:features/gamemode_settings/tnt/refill
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:15b}] run function gui:features/gamemode_settings/tnt/buffs
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:16b}] run function gui:features/gamemode_settings/tnt/water
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:17b}] run function gui:features/gamemode_settings/tnt/healing
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 1 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:23b}] run function gui:features/gamemode_settings/tnt/next

# ── TNT Cart General Settings page (gui_page 30), sub-page 2 ── Toggles(0-2), Back(18), Prev(21)
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:0b}] run function gui:features/gamemode_settings/tnt/prompt_start
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:1b}] run function gui:features/gamemode_settings/tnt/small
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:2b}] run function gui:features/gamemode_settings/tnt/random
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:18b}] run function gui:ui/back
execute if score .gui gui_page matches 30 if score .tnt_gs_page gui_page matches 2 unless data entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] Items[{Slot:21b}] run function gui:features/gamemode_settings/tnt/prev