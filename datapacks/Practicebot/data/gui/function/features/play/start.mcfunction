# GUI System - Click: start
# Run the map start function (no WIP page anymore)
clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]

# Dismiss the chest minecart GUI immediately on game start.
# The chest minecart GUI is not compatible with active games — when the
# player is teleported to a game dimension the main barrel (-715 31 90) can
# be unloaded, sync_chest copies an empty Items list, and detect_chest fires
# every button handler every tick (spamming the "multiple bots" warning,
# corrupting the page-history stack, etc.).
# We clear the summoner nether star from ALL players (not just @s, because a
# spectator could be holding it) and kill any active minecart.  chest/tick
# also does this continuously while .start matches 1 — this line just makes
# it instant rather than waiting 3.5 s for start3 to set .start.
clear @a minecraft:nether_star[minecraft:custom_data={gui_chest:1b}]
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Items:[]}
kill @e[type=minecraft:chest_minecart,tag=gui_chest]

# Run the start function (handles kit loading, tp, scheduling, etc.)
function quantum:map/start

# Reset the GUI to the main page so the Start button doesn't re-trigger.
# Without this, .gui stays at 2 (Play) and the barrel keeps showing the
# Start button — which detect_barrel_clicks would fire again the next
# time a player approaches and the slot is briefly empty.
# Resetting to page 1 means the barrel shows Play/Statistics/Credits
# (no Start button) until the player navigates to Play again.
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
function gui:features/main/page
