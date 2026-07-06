# GUI System - Click: mech_crystal_hit_anchor
# Hit Anchor mech training: run mech_train:crystal/hit_anchor/init and return to play page
clear @s minecraft:respawn_anchor[minecraft:custom_data={gui_btn:"mech_crystal_hit_anchor"}]

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Refresh the barrel to the play page BEFORE teleporting the player.
# This fills all slots so detect_barrel_clicks won't see a stale empty slot
# (which would falsely trigger another button when the player returns).
# gui:pages/play also sets .gui = 2 and syncs all satellite barrels.
function gui:pages/play

# Run the mech training init function (teleports player to training arena)
function mech_train:crystal/hit_anchor/init
