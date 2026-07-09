
execute unless score .debug toggles matches 1 run return 0

execute store result score .dbg_mx debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[0] 1
execute store result score .dbg_my debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[1] 1
execute store result score .dbg_mz debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[2] 1
execute store result score .dbg_bx debug run data get entity quantumbot Pos[0] 1
execute store result score .dbg_by debug run data get entity quantumbot Pos[1] 1
execute store result score .dbg_bz debug run data get entity quantumbot Pos[2] 1
execute as @a[tag=xlib_target,limit=1] store result score .dbg_px debug run data get entity @s Pos[0] 1
execute as @a[tag=xlib_target,limit=1] store result score .dbg_py debug run data get entity @s Pos[1] 1
execute as @a[tag=xlib_target,limit=1] store result score .dbg_pz debug run data get entity @s Pos[2] 1

tellraw @a [{"text":"M[","color":"aqua"},{"score":{"name":".dbg_mx","objective":"debug"},"color":"aqua"},{"text":","},{"score":{"name":".dbg_my","objective":"debug"},"color":"aqua"},{"text":","},{"score":{"name":".dbg_mz","objective":"debug"},"color":"aqua"},{"text":"] "},{"text":"B[","color":"gold"},{"score":{"name":".dbg_bx","objective":"debug"},"color":"gold"},{"text":","},{"score":{"name":".dbg_by","objective":"debug"},"color":"gold"},{"text":","},{"score":{"name":".dbg_bz","objective":"debug"},"color":"gold"},{"text":"] "},{"text":"P[","color":"light_purple"},{"score":{"name":".dbg_px","objective":"debug"},"color":"light_purple"},{"text":","},{"score":{"name":".dbg_py","objective":"debug"},"color":"light_purple"},{"text":","},{"score":{"name":".dbg_pz","objective":"debug"},"color":"light_purple"},{"text":"] "},{"text":"rcd=","color":"yellow"},{"score":{"name":"@s","objective":"resetcd"},"color":"yellow"},{"text":" rt="},{"score":{"name":"@s","objective":"reset_trigger"},"color":"yellow"},{"text":" hc="},{"score":{"name":"@s","objective":"hitcd"},"color":"yellow"},{"text":" pops="},{"score":{"name":"@s","objective":"pops"},"color":"yellow"},{"text":" mode="},{"score":{"name":".mode","objective":"mode"},"color":"yellow"}]
