execute store result score #world_border_diameter benchmark.var run worldborder get
execute if score #world_border_diameter benchmark.var matches ..59998039 run function benchmark:bin/profiler/loop
