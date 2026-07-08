# Chest GUI — Tick
# Called from core/tick every game tick.
# Manages the per-player chest minecart: tag holders, summon if missing,
# follow the player's eye, despawn when no longer holding.

# Step 1: tag players holding the Quantum AI nether star in their main hand.
# weapon.mainhand means the currently selected hotbar slot — exactly what
# the user sees as "held".
execute as @a if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={gui_chest:1b}] run tag @s add gui_chest_holding
execute as @a unless items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={gui_chest:1b}] run tag @s remove gui_chest_holding

# Step 2: each holding player summons (if missing) + teleports their minecart.
# chest/follow runs anchored at the player's eyes, so it can both summon
# at eye+0.4 and tp the existing minecart to eye+0.4.
execute as @a[tag=gui_chest_holding] at @s anchored eyes run function gui:chest/follow

# Step 3: clear items AND kill any chest minecart whose holding player is no
# longer nearby.  We MUST clear Items[] before kill — otherwise the minecart
# dumps its entire inventory on the ground.  This handles the despawn case
# (player switched items, logged out, died, teleported away via gamemode
# switch, etc.)
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run data merge entity @s {Items:[]}
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run kill @s

# Step 4: pre-fill NEWLY-SUMMONED minecarts with the current page items.
# chest/follow tags freshly-summoned minecarts with "gui_chest_new".  We sync
# the main barrel's Items into them here (BEFORE detect_chest) and remove the
# tag so this only happens once per minecart.
#
# WHY: when a player teleports (e.g. switching gamemodes) the old minecart is
# killed in step 3 and a new empty one is summoned in step 2.  If detect_chest
# ran on an empty minecart every slot would read as "empty" and EVERY button
# would fire at once — completely breaking the GUI (gamemode switcher,
# navigation, everything).  Pre-filling new minecarts ensures detect_chest
# only sees legitimately clicked (empty) slots.
#
# We do NOT sync EXISTING minecarts here.  If we did, sync would refill slots
# that the player just clicked (item moved to cursor = empty slot) BEFORE
# detect_chest could see the click — that would break ALL button clicks.  Only
# new minecarts need pre-filling; existing minecarts are synced in step 7
# AFTER click detection.
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run data modify entity @s Items set from block -715 31 90 Items
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run tag @s remove gui_chest_new

# Step 5: click detection on each chest minecart (slot-empty check).
# Runs as each holding player; detect_chest targets their nearest minecart.
execute as @a[tag=gui_chest_holding] run function gui:core/detect_chest

# Step 6: inventory-scan fallback (catches shift-clicks out of the minecart).
# detect_inventory is shared with the barrel variant — it just checks the
# player's inventory for GUI items, which works for both containers.
execute as @a[tag=gui_chest_holding] run function gui:core/detect_inventory

# Step 7: sync ALL chest minecarts AFTER click detection.
# When a click is detected in step 5 the handler calls a page function that
# rewrites the main barrel (e.g. gui:features/play/page).  This sync propagates
# the new page to every chest minecart so the player sees the updated GUI
# immediately.  Running sync AFTER detect (not before) is critical: syncing
# before detect would refill clicked slots and break all button clicks.
function gui:core/sync_chest
