scoreboard players set .mode mode 203
title @a times 2 5 2
title @a title {"text":"Hit-anchor","color": "light_purple"}
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"hit_anchor init: pre-common_init"}
execute as quantumbot at @s run function mech_train:crystal/common_init
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"hit_anchor init: post-common_init"}
execute as quantumbot at @s run function mech_train:crystal/hit_anchor/loop
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"hit_anchor init: post-loop"}
