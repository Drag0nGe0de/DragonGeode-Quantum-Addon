scoreboard players set .mode mode 604
title @a times 2 5 2
title @a title {"text":"0","color": "gold"}
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"cart0 init: pre-common_init"}
execute as quantumbot at @s run function mech_train:crystal/common_init
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"cart0 init: post-common_init"}
execute as @a[tag=xlib_target] at @s positioned over world_surface run tp @s ~ ~ ~ facing ~ ~ ~3
attribute quantumbot max_health base set 10
item replace entity @a armor.feet with minecraft:netherite_boots[minecraft:enchantments={"minecraft:feather_falling":4,"minecraft:blast_protection":4},minecraft:unbreakable={}]
item replace entity @a armor.legs with minecraft:netherite_leggings[minecraft:enchantments={"minecraft:feather_falling":4,"minecraft:blast_protection":4},minecraft:unbreakable={}]
execute as quantumbot at @s run function mech_train:cart/0/loop
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"cart0 init: post-loop"}
