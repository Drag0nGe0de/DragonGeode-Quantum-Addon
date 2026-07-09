
execute in minecraft:overworld run setblock -715 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -683 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -651 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 90 minecraft:barrel[facing=east] replace
execute in minecraft:overworld run setblock -619 31 134 minecraft:barrel[facing=east] replace

execute in minecraft:overworld run data modify block -715 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -683 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -651 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld run data modify block -619 31 134 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
scoreboard players set .gui_prev3 gui_page 1
scoreboard players set .gui_prev4 gui_page 1
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 1 run scoreboard players set .gm gui_page 5
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 2 run scoreboard players set .gm gui_page 4
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 3 run scoreboard players set .gm gui_page 3
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 4 run scoreboard players set .gm gui_page 2
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 5 run scoreboard players set .gm gui_page 2
execute unless score .gm gui_page matches 0..5 run execute if score .mode mode matches 6 run scoreboard players set .gm gui_page 1
execute unless score .gm gui_page matches 0..5 run execute unless score .mode mode matches 1..6 run scoreboard players set .gm gui_page 4
execute unless score .terrain terrain matches 0..6 run scoreboard players set .terrain terrain 0
execute unless score .difficulty difficulty matches 0..5 run scoreboard players set .difficulty difficulty 4

function gui:features/main/page
