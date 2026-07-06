# GUI System - Click: mech_pot_refill_inventory
# Refill Inventory mech training: run mech_train:pot/refill_inventory/init and return to play page
clear @s minecraft:brewing_stand[minecraft:custom_data={gui_btn:"mech_pot_refill_inventory"}]

# Run the mech training init function (teleports player to training arena)
function mech_train:pot/refill_inventory/init

# Reset history stack so Back from Play returns to Main (not to Play itself).
scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

# Set GUI page to play (2) so when the player returns to the barrel it shows play page
scoreboard players set .gui gui_page 2
