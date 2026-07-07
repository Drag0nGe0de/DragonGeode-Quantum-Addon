# Mech Training Debug Snapshot — prints a labeled position snapshot.
# Call with a label macro arg: function mech_train:debug/snapshot {label:"<text>"}
# Prints: [label] B[bx,by,bz] dim=<botdim> M[mx,my,mz] exists=<yes/no> P[px,py,pz] dim=<playerdim>

# Read bot pos + dim
execute store result score .snap_bx debug run data get entity quantumbot Pos[0] 1
execute store result score .snap_by debug run data get entity quantumbot Pos[1] 1
execute store result score .snap_bz debug run data get entity quantumbot Pos[2] 1
# Read marker pos (if it exists; 0 if not)
execute store result score .snap_m_exists debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[0] 1
execute store result score .snap_mx debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[0] 1
execute store result score .snap_my debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[1] 1
execute store result score .snap_mz debug run data get entity @e[tag=rtp,type=marker,limit=1] Pos[2] 1
# Read player pos
execute as @a[tag=xlib_target,limit=1] store result score .snap_px debug run data get entity @s Pos[0] 1
execute as @a[tag=xlib_target,limit=1] store result score .snap_py debug run data get entity @s Pos[1] 1
execute as @a[tag=xlib_target,limit=1] store result score .snap_pz debug run data get entity @s Pos[2] 1

# Print: [label] B[bx,by,bz] M[exists:mx,my,mz] P[px,py,pz]
$tellraw @a [{"text":"[","color":"gold"},{"text":"$(label)","color":"gold","bold":true},{"text":"] "},{"text":"B[","color":"yellow"},{"score":{"name":".snap_bx","objective":"debug"}},{"text":","},{"score":{"name":".snap_by","objective":"debug"}},{"text":","},{"score":{"name":".snap_bz","objective":"debug"}},{"text":"] "},{"text":"M[","color":"aqua"},{"score":{"name":".snap_mx","objective":"debug"}},{"text":","},{"score":{"name":".snap_my","objective":"debug"}},{"text":","},{"score":{"name":".snap_mz","objective":"debug"}},{"text":"] "},{"text":"P[","color":"light_purple"},{"score":{"name":".snap_px","objective":"debug"}},{"text":","},{"score":{"name":".snap_py","objective":"debug"}},{"text":","},{"score":{"name":".snap_pz","objective":"debug"}},{"text":"]"}]
