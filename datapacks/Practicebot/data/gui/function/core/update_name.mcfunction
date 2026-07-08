# GUI System — Update Barrel & Chest Minecart Name
# Sets the CustomName on all 5 GUI barrels AND every active chest minecart GUI
# to a static "Quantum AI" title.  Called from tick.mcfunction every tick when
# a player is nearby.  The compound text-component value (NOT a single-quoted
# JSON string) ensures Minecraft renders "Quantum AI" instead of raw JSON.

execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -683 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -651 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 134 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
# Also update every active chest minecart GUI so its title matches the barrels.
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data modify entity @s CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
