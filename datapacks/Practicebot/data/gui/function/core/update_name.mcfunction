# GUI System — Update Barrel Name
# Sets the CustomName on all 5 GUI barrels to a static "Quantum AI" title.
# Called from tick.mcfunction every tick when a player is nearby.

execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -683 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -651 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 134 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
