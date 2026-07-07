gamemode survival @a
# [DEBUG] snapshot at common_init start (before rtp/loadkit)
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"common_init: start"}
attribute @s max_health base set 20
attribute @s gravity base set 0.08
function mech_train:generic/loadkit
execute as quantumbot run function mech_train:botgear/neth
execute unless dimension quantum:plains unless score .mode mode matches 203 run function mech_train:generic/rtp
execute unless dimension quantum:stone if score .mode mode matches 203 run function mech_train:generic/rtp
# [DEBUG] snapshot at common_init end (after rtp + marker summon)
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"common_init: end"}
