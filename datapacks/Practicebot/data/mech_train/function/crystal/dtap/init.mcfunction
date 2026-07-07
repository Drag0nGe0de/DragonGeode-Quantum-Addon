scoreboard players set .mode mode 201
title @a times 2 5 2
title @a title {"text":"D-tap","color": "light_purple"}
# [DEBUG] snapshot before common_init
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: pre-common_init"}
execute as quantumbot at @s run function mech_train:crystal/common_init
# [DEBUG] snapshot after common_init, before loop
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: post-common_init"}
execute as quantumbot at @s run function mech_train:crystal/dtap/loop
# [DEBUG] snapshot after loop call
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"dtap init: post-loop"}
