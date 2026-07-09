gamemode survival @a
title @a actionbar {"text": "Enable chat for full experience","color": "aqua"}

kill @e[type=marker]
kill @e[type=#mech_train:reset]

execute if score .gear toggles matches 1 as @a[tag=xlib_bot] run function quantum:botgear/neth
execute if score .gear toggles matches 2 as @a[tag=xlib_bot] run function quantum:botgear/dia
scoreboard players set @a pops 0