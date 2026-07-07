# Disable mech training debug mode.
# Run with: /function mech_train:debug/off
scoreboard players set .debug toggles 0
tellraw @a [{"text":"[MechTrain] ","color":"gold"},{"text":"Debug OFF","color":"red"}]
