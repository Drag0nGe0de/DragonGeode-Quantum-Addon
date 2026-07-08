# Chest GUI — Tick
# Called from core/tick every game tick.
# Manages the per-player chest minecart: tag holders, summon if missing,
# follow the player's eye, despawn when no longer holding.

# Step 1: tag players holding the Quantum AI nether star in their main hand.
# weapon.mainhand means the currently selected hotbar slot — exactly what
# the user sees as "held".
execute as @a if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data~={gui_chest:1b}] run tag @s add gui_chest_holding
execute as @a unless items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data~={gui_chest:1b}] run tag @s remove gui_chest_holding

# Step 2: each holding player summons (if missing) + teleports their minecart.
# chest/follow runs anchored at the player's eyes, so it can both summon
# at eye+0.4 and tp the existing minecart to eye+0.4.
execute as @a[tag=gui_chest_holding] at @s anchored eyes run function gui:chest/follow

# Step 3: kill any chest minecart whose holding player is no longer nearby.
# This handles the despawn case (player switched items, logged out, died, etc.)
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run kill @s

# Step 4: click detection on each chest minecart (slot-empty check).
# Runs as each holding player; detect_chest targets their nearest minecart.
execute as @a[tag=gui_chest_holding] run function gui:core/detect_chest

# Step 5: inventory-scan fallback (catches shift-clicks out of the minecart).
# detect_inventory is shared with the barrel variant — it just checks the
# player's inventory for GUI items, which works for both containers.
execute as @a[tag=gui_chest_holding] run function gui:core/detect_inventory

# Step 6: mirror main barrel contents to all chest minecarts.
# Page functions write to the main barrel; this propagates the same Items[]
# to every chest minecart so they show the same GUI as the barrels.
function gui:core/sync_chest
