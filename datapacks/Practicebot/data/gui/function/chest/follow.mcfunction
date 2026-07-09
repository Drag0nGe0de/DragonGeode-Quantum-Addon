execute unless entity @e[type=minecraft:chest_minecart,tag=gui_chest,distance=..5] run summon minecraft:chest_minecart ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Fire:0s,Tags:["gui_chest","gui_chest_new"]}

execute store result score .gc_ppx var run data get entity @s Pos[0] 1000
execute store result score .gc_ppy var run data get entity @s Pos[1] 1000
execute store result score .gc_ppz var run data get entity @s Pos[2] 1000

scoreboard players operation .gc_vx var = .gc_ppx var
scoreboard players operation .gc_vx var -= .gc_pvx var
scoreboard players operation .gc_vy var = .gc_ppy var
scoreboard players operation .gc_vy var -= .gc_pvy var
scoreboard players operation .gc_vz var = .gc_ppz var
scoreboard players operation .gc_vz var -= .gc_pvz var

scoreboard players operation .gc_pvx var = .gc_ppx var
scoreboard players operation .gc_pvy var = .gc_ppy var
scoreboard players operation .gc_pvz var = .gc_ppz var

execute if score .gc_vx var matches 5001.. run scoreboard players set .gc_vx var 5000
execute if score .gc_vx var matches ..-5001 run scoreboard players set .gc_vx var -5000
execute if score .gc_vy var matches 5001.. run scoreboard players set .gc_vy var 5000
execute if score .gc_vy var matches ..-5001 run scoreboard players set .gc_vy var -5000
execute if score .gc_vz var matches 5001.. run scoreboard players set .gc_vz var 5000
execute if score .gc_vz var matches ..-5001 run scoreboard players set .gc_vz var -5000

execute at @s anchored eyes run tp @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] ^ ^ ^0.4

scoreboard players operation .gc_vx var *= .gc_lk var
scoreboard players operation .gc_vx var /= .gc_1k var
scoreboard players operation .gc_vy var *= .gc_lk var
scoreboard players operation .gc_vy var /= .gc_1k var
scoreboard players operation .gc_vz var *= .gc_lk var
scoreboard players operation .gc_vz var /= .gc_1k var

execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcx var run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcy var run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result score .gc_mcz var run data get entity @s Pos[2] 1000
scoreboard players operation .gc_mcx var += .gc_vx var
scoreboard players operation .gc_mcy var += .gc_vy var
scoreboard players operation .gc_mcz var += .gc_vz var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[0] double 0.001 run scoreboard players get .gc_mcx var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[1] double 0.001 run scoreboard players get .gc_mcy var
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] store result entity @s Pos[2] double 0.001 run scoreboard players get .gc_mcz var

execute at @s run data merge entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] {Invulnerable:1b,NoGravity:1b,Silent:1b,Fire:0s}
execute at @s run effect give @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] fire_resistance infinite 0 true
execute at @s run data modify entity @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
