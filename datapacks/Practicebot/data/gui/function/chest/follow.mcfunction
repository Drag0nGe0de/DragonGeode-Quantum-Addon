# Chest GUI — Follow
# Runs as the holding player, anchored at their eyes.
# - If no chest minecart is within 5 blocks, summon one 1 block above the
#   player's feet (to minimise the initial jump to the first tp target).
#   Tag it with "gui_chest_new" so chest/tick can pre-fill its Items before
#   click detection runs.
# - Teleport the nearest chest minecart to eye+0.4 (so it stays glued to
#   the player's view no matter where they look).
# - Apply smart position-delta look-ahead: compute the player's ACTUAL
#   per-tick velocity (current Pos - previous Pos) and add it (scaled by
#   .gc_lk / 1000) to the minecart's position so it stays in front when the
#   player is moving fast.  This compensates for the one-tick tp delay and
#   for the render interpolation lag.
#
# The minecart is summoned with:
#   Invulnerable:1b       — can't be destroyed by damage
#   NoGravity:1b          — won't fall when the player flies / looks up
#   Silent:1b             — no minecart rolling sounds
#   PersistenceRequired:1b — won't despawn on its own
#   Tags:["gui_chest","gui_chest_new"] — gui_chest for tp/kill/mirror,
#                                        gui_chest_new for one-time pre-fill
#
# Note on multi-player: this simple impl shares one minecart per cluster of
# holding players (the "nearest" minecart follows the nearest holder). For
# per-player minecarts you'd need owner-UUID tagging — easy to add later.

# Summon if missing within 5 blocks.
# Spawn 1 block above the player's feet (~ ~1 ~) so the first tp to eye+0.4
# is a smaller jump than spawning at feet level (~ ~ ~).
# NOTE: Do NOT put CustomName in the summon NBT as a single-quoted string
# (CustomName:'{"text":"..."}').  That stores it as a plain NBT string and
# Minecraft renders the raw JSON literally instead of as a text component.
# We set CustomName via "data modify ... set value {compound}" below — the
# same pattern used for the GUI barrels in core/setup.mcfunction (Bug 1 fix).
# The "gui_chest_new" tag lets chest/tick pre-fill Items before detect_chest.
execute unless entity @e[type=minecraft:chest_minecart,tag=gui_chest,distance=..5] run summon minecraft:chest_minecart ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Fire:0s,Tags:["gui_chest","gui_chest_new"]}

# ── Smart velocity-based tracking (position-delta) ──
# Instead of reading the Motion NBT (which is stale — it does NOT include
# Speed-effect multipliers, sprint bonus, or elytra acceleration, so the old
# 1.5× Motion look-ahead badly under-compensated at high speeds and the
# minecart lagged ~1 block behind with Speed IV), we compute the player's
# ACTUAL per-tick velocity by comparing their current position to their
# position last tick.  This captures the true movement vector regardless of
# speed effects, sprinting, elytra, etc., and lets us predict where the
# player will be next tick so the minecart stays glued to them.
#
# The look-ahead factor .gc_lk (default 2000 = 2.0×) is applied in WORLD
# coordinates so it works for any movement direction:
#   • Forward  — minecart stays 0.4 ahead, no lag
#   • Backward — minecart stays 0.4 ahead (in look dir), no overshoot
#   • Strafing — minecart shifts sideways with the player, no lag
#   • Up/down  — minecart follows vertical movement (flying, jumping)
# 2.0× (rather than 1.0×) covers both the one-tick tp delay AND the client
# render-interpolation delay, keeping the minecart visibly in front.
#
# Math (all scores on the "var" objective, scaled by 1000 for precision):
#   1. Read player Pos[0..2] → .gc_ppx/y/z          (current, scale 1000)
#   2. velocity = current − previous                 (.gc_pvx/y/z = last tick)
#   3. Store current → previous for next tick
#   4. Clamp velocity to ±5000 (5 b/tick) — prevents first-tick fling when
#      previous pos is uninitialized (0,0,0) or after a teleport.
#   5. Teleport minecart to eye + 0.4 forward
#   6. Scale velocity by .gc_lk / .gc_1k  → velocity * 2.0 * 1000
#   7. Read minecart Pos → .gc_mcx/y/z, add scaled velocity, write back

# Step 1: Read player's current position (scaled by 1000).
execute store result score .gc_ppx var run data get entity @s Pos[0] 1000
execute store result score .gc_ppy var run data get entity @s Pos[1] 1000
execute store result score .gc_ppz var run data get entity @s Pos[2] 1000

# Step 2: Compute velocity = current − previous (previous = last tick's pos).
scoreboard players operation .gc_vx var = .gc_ppx var
scoreboard players operation .gc_vx var -= .gc_pvx var
scoreboard players operation .gc_vy var = .gc_ppy var
scoreboard players operation .gc_vy var -= .gc_pvy var
scoreboard players operation .gc_vz var = .gc_ppz var
scoreboard players operation .gc_vz var -= .gc_pvz var

# Step 3: Store current position as "previous" for next tick.
scoreboard players operation .gc_pvx var = .gc_ppx var
scoreboard players operation .gc_pvy var = .gc_ppy var
scoreboard players operation .gc_pvz var = .gc_ppz var

# Step 4: Clamp velocity to ±5000 (5 blocks/tick) to prevent first-tick
# flinging when .gc_pvx/y/z are uninitialized (0) or after a long teleport.
execute if score .gc_vx var matches 5001.. run scoreboard players set .gc_vx var 5000
execute if score .gc_vx var matches ..-5001 run scoreboard players set .gc_vx var -5000
execute if score .gc_vy var matches 5001.. run scoreboard players set .gc_vy var 5000
execute if score .gc_vy var matches ..-5001 run scoreboard players set .gc_vy var -5000
execute if score .gc_vz var matches 5001.. run scoreboard players set .gc_vz var 5000
execute if score .gc_vz var matches ..-5001 run scoreboard players set .gc_vz var -5000

# Step 5: Teleport the nearest minecart to eye position + 0.4 blocks forward.
# ^ ^ ^0.4 = local coords (left, up, forward). 0.4 forward puts the minecart
# right in the player's face — visible no matter where they look.
# "anchored eyes" uses the player's HEAD rotation (yaw + pitch), so the
# forward direction already accounts for where the player is looking.
execute at @s anchored eyes run tp @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] ^ ^ ^0.4

# Step 6: Scale velocity by look-ahead factor (.gc_lk=2000, .gc_1k=1000 → 2.0×).
scoreboard players operation .gc_vx var *= .gc_lk var
scoreboard players operation .gc_vx var /= .gc_1k var
scoreboard players operation .gc_vy var *= .gc_lk var
scoreboard players operation .gc_vy var /= .gc_1k var
scoreboard players operation .gc_vz var *= .gc_lk var
scoreboard players operation .gc_vz var /= .gc_1k var

# Step 7: Read minecart Pos, add scaled velocity, write back.
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcx var run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcy var run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcz var run data get entity @s Pos[2] 1000
scoreboard players operation .gc_mcx var += .gc_vx var
scoreboard players operation .gc_mcy var += .gc_vy var
scoreboard players operation .gc_mcz var += .gc_vz var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[0] double 0.001 run scoreboard players get .gc_mcx var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[1] double 0.001 run scoreboard players get .gc_mcy var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[2] double 0.001 run scoreboard players get .gc_mcz var

# Re-assert NoGravity/Invulnerable/Fire in case a plugin cleared them.
# Fire:0s extinguishes the minecart every tick so it never appears to be on
# fire (e.g. if the player walks through lava or stands in fire).  Combined
# with Invulnerable:1b the minecart takes no fire damage AND never shows the
# burning animation.
execute at @s run data merge entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Fire:0s}
# Fire Resistance prevents the minecart from (re)catching fire while it is
# submerged in lava or standing in a fire block — the Fire:0s above only
# clears the Fire timer, but the game re-ignites the entity on the next
# entity tick if it is still in a fire source.  Fire Resistance stops the
# re-ignition at the source.  (effect give on non-living entities is a no-op
# on some MC versions; Fire:0s above is the guaranteed fallback.)
execute at @s run effect give @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] fire_resistance infinite 0 true
# Set CustomName as a compound text component (NOT a string) so Minecraft
# renders "Quantum AI" instead of the raw JSON.  Matches the barrel pattern.
execute at @s run data modify entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
