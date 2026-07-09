scoreboard players set .debug toggles 1
tellraw @a [{"text":"[MechTrain] ","color":"gold"},{"text":"Debug ON","color":"green"},{"text":" — positions + cooldowns will print every tick while a mech training is active.","color":"gray"}]
tellraw @a [{"text":"[MechTrain] ","color":"gold"},{"text":"Turn off with: ","color":"gray"},{"text":"/function mech_train:debug/off","color":"aqua","click_event":{"action":"run_command","command":"/function mech_train:debug/off"}}]
