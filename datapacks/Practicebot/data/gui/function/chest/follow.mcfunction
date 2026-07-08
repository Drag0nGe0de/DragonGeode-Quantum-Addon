# Chest GUI — Follow
# Runs as the holding player, anchored at their eyes.
# - If no chest minecart is within 5 blocks, summon one at eye+0.4.
# - Teleport the nearest chest minecart to eye+0.4 (so it stays glued to
#   the player's view no matter where they look).
#
# The minecart is summoned with:
#   Invulnerable:1b       — can't be destroyed by damage
#   NoGravity:1b          — won't fall when the player flies / looks up
#   Silent:1b             — no minecart rolling sounds
#   PersistenceRequired:1b — won't despawn on its own
#   Tags:["gui_chest"]    — so we can target it for tp/kill/mirror
#
# Note on multi-player: this simple impl shares one minecart per cluster of
# holding players (the "nearest" minecart follows the nearest holder). For
# per-player minecarts you'd need owner-UUID tagging — easy to add later.

# Summon if missing within 5 blocks
execute unless entity @e[type=minecraft:chest_minecart,tag=gui_chest,distance=..5] run summon minecraft:chest_minecart ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["gui_chest"],CustomName:'{"text":"Quantum AI","color":"aqua","italic":false}'}

# Teleport the nearest minecart to eye position + 0.4 blocks forward.
# ^ ^ ^0.4 = local coords (left, up, forward). 0.4 forward puts the minecart
# right in the player's face — visible no matter where they look.
# Also re-assert NoGravity/Invulnerable in case a plugin cleared them.
execute at @s anchored eyes run tp @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] ^ ^ ^0.4
execute at @s run data merge entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] {Invulnerable:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b}
