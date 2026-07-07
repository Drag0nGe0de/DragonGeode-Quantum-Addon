scoreboard players set .mode mode 202
title @a times 2 5 2
title @a title {"text":"Ledge Dash","color": "light_purple"}
# [DEBUG] snapshot before common_init
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"ledge init: pre-common_init"}
scoreboard players set quantumbot obby_cd 5
execute as quantumbot at @s run function mech_train:crystal/common_init
# [DEBUG] snapshot after common_init, before loop
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"ledge init: post-common_init"}
attribute quantumbot max_health base set 20
execute as quantumbot at @s run function mech_train:crystal/ledge/loop
scoreboard players add quantumbot pearlcd2 100
# [DEBUG] snapshot after loop call
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"ledge init: post-loop"}
