# GUI System - Click: mech_mace_divebomb
# Divebomb mech training: run mech_train:mace/divebomb/init and return to play page
clear @s minecraft:firework_rocket[minecraft:custom_data={gui_btn:"mech_mace_divebomb"}]

# Run the mech training init function (teleports player to training arena)
function mech_train:mace/divebomb/init

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Set GUI page to play (2) so when the player returns to the barrel it shows play page
scoreboard players set .gui gui_page 2
