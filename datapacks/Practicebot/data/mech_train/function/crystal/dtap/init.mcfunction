scoreboard players set .mode mode 201
title @a times 2 5 2
title @a title {"text":"D-tap","color": "light_purple"}
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: pre-common_init"}
execute as quantumbot at @s run function mech_train:crystal/common_init
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: post-common_init"}
execute as quantumbot at @s run function mech_train:crystal/dtap/loop
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: post-loop"}
