# GUI System - Click: mech_pot_refill_hotbar
# Refill Hotbar mech training: run mech_train:pot/refill_hotbar/init and return to play page
clear @s minecraft:glass_bottle[minecraft:custom_data={gui_btn:"mech_pot_refill_hotbar"}]

# Run the mech training init function (teleports player to training arena)
function mech_train:pot/refill_hotbar/init

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Set GUI page to play (2) so when the player returns to the barrel it shows play page
scoreboard players set .gui gui_page 2
