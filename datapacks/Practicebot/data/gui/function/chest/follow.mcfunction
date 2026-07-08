# Chest GUI — Follow
# Runs as the holding player, anchored at their eyes.
# - If no chest minecart is within 5 blocks, summon one 1 block above the
#   player's feet (to minimise the initial jump to the first tp target).
#   Tag it with "gui_chest_new" so chest/tick can pre-fill its Items before
#   click detection runs.
# - Teleport the nearest chest minecart to eye+0.4 (so it stays glued to
#   the player's view no matter where they look).
# - Apply motion-based look-ahead: add the player's velocity (scaled by 1.5)
#   to the minecart's position so it stays in front when the player is moving
#   fast.  This compensates for the one-tick tp delay.
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
execute unless entity @e[type=minecraft:chest_minecart,tag=gui_chest,distance=..5] run summon minecraft:chest_minecart ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["gui_chest","gui_chest_new"]}

# Teleport the nearest minecart to eye position + 0.4 blocks forward.
# ^ ^ ^0.4 = local coords (left, up, forward). 0.4 forward puts the minecart
# right in the player's face — visible no matter where they look.
# "anchored eyes" uses the player's HEAD rotation (yaw + pitch), so the
# forward direction already accounts for where the player is looking.
execute at @s anchored eyes run tp @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] ^ ^ ^0.4

# ── Motion-based look-ahead prediction ──
# The tp above is delayed by one tick.  When the player is moving fast the
# minecart lags behind.  To compensate, we add the player's current velocity
# (Motion NBT, in blocks/tick) scaled by 1.5 to the minecart's position.
# This puts the minecart roughly where the player will be next tick, so it
# stays "in front" instead of lagging.  The .gc_lk score (default 1500 =
# 1.5x) can be adjusted to tune how aggressive the prediction is.
#
# Math (all scores on the "var" objective, scaled by 1000 for precision):
#   1. Read player Motion[0..2] → .gc_pmx/y/z  (scale 1000)
#   2. Multiply by .gc_lk (1500) then divide by .gc_1k (1000) → motion*1.5*1000
#   3. Read minecart Pos[0..2] → .gc_mcx/y/z  (scale 1000)
#   4. Add motion to position
#   5. Write back to minecart Pos[0..2]  (scale 0.001 = 1/1000)
execute store result score .gc_pmx var run data get entity @s Motion[0] 1000
execute store result score .gc_pmy var run data get entity @s Motion[1] 1000
execute store result score .gc_pmz var run data get entity @s Motion[2] 1000
scoreboard players operation .gc_pmx var *= .gc_lk var
scoreboard players operation .gc_pmx var /= .gc_1k var
scoreboard players operation .gc_pmy var *= .gc_lk var
scoreboard players operation .gc_pmy var /= .gc_1k var
scoreboard players operation .gc_pmz var *= .gc_lk var
scoreboard players operation .gc_pmz var /= .gc_1k var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcx var run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcy var run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcz var run data get entity @s Pos[2] 1000
scoreboard players operation .gc_mcx var += .gc_pmx var
scoreboard players operation .gc_mcy var += .gc_pmy var
scoreboard players operation .gc_mcz var += .gc_pmz var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[0] double 0.001 run scoreboard players get .gc_mcx var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[1] double 0.001 run scoreboard players get .gc_mcy var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[2] double 0.001 run scoreboard players get .gc_mcz var

# Re-assert NoGravity/Invulnerable in case a plugin cleared them.
execute at @s run data merge entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b}
# Set CustomName as a compound text component (NOT a string) so Minecraft
# renders "Quantum AI" instead of the raw JSON.  Matches the barrel pattern.
execute at @s run data modify entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
