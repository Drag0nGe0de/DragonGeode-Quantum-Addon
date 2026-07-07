# GUI System — Update Barrel Name
# Sets the CustomName on all 5 GUI barrels based on the current page.
# Called from tick.mcfunction every tick when a player is nearby.
# Main page (1) is just 'Quantum AI'; sub-pages show the breadcrumb path.

execute in minecraft:overworld if score .gui gui_page matches 1 run data modify block -715 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 1 run data modify block -683 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 1 run data modify block -651 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 1 run data modify block -619 31 90 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 1 run data modify block -619 31 134 CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 2 run data modify block -715 31 90 CustomName set value {"text":"Play","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 2 run data modify block -683 31 90 CustomName set value {"text":"Play","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 2 run data modify block -651 31 90 CustomName set value {"text":"Play","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 2 run data modify block -619 31 90 CustomName set value {"text":"Play","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 2 run data modify block -619 31 134 CustomName set value {"text":"Play","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 3 run data modify block -715 31 90 CustomName set value {"text":"Play > WIP","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 3 run data modify block -683 31 90 CustomName set value {"text":"Play > WIP","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 3 run data modify block -651 31 90 CustomName set value {"text":"Play > WIP","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 3 run data modify block -619 31 90 CustomName set value {"text":"Play > WIP","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 3 run data modify block -619 31 134 CustomName set value {"text":"Play > WIP","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 4 run data modify block -715 31 90 CustomName set value {"text":"Play > Gamemode","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 4 run data modify block -683 31 90 CustomName set value {"text":"Play > Gamemode","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 4 run data modify block -651 31 90 CustomName set value {"text":"Play > Gamemode","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 4 run data modify block -619 31 90 CustomName set value {"text":"Play > Gamemode","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 4 run data modify block -619 31 134 CustomName set value {"text":"Play > Gamemode","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 5 run data modify block -715 31 90 CustomName set value {"text":"Play > Terrain","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 5 run data modify block -683 31 90 CustomName set value {"text":"Play > Terrain","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 5 run data modify block -651 31 90 CustomName set value {"text":"Play > Terrain","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 5 run data modify block -619 31 90 CustomName set value {"text":"Play > Terrain","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 5 run data modify block -619 31 134 CustomName set value {"text":"Play > Terrain","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 6 run data modify block -715 31 90 CustomName set value {"text":"Play > Difficulty","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 6 run data modify block -683 31 90 CustomName set value {"text":"Play > Difficulty","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 6 run data modify block -651 31 90 CustomName set value {"text":"Play > Difficulty","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 6 run data modify block -619 31 90 CustomName set value {"text":"Play > Difficulty","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 6 run data modify block -619 31 134 CustomName set value {"text":"Play > Difficulty","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 7 run data modify block -715 31 90 CustomName set value {"text":"Play > Mech Training","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 7 run data modify block -683 31 90 CustomName set value {"text":"Play > Mech Training","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 7 run data modify block -651 31 90 CustomName set value {"text":"Play > Mech Training","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 7 run data modify block -619 31 90 CustomName set value {"text":"Play > Mech Training","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 7 run data modify block -619 31 134 CustomName set value {"text":"Play > Mech Training","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 8 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 8 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 8 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 8 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 8 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 9 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > NPC Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 9 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > NPC Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 9 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > NPC Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 9 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > NPC Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 9 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > NPC Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 10 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Armor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 10 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Armor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 10 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Armor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 10 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Armor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 10 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > NPC Settings > Armor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 11 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Presets","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 11 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Presets","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 11 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Presets","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 11 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Presets","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 11 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > NPC Settings > Presets","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 12 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > General Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 12 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > General Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 12 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > General Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 12 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > General Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 12 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > NPC Settings > General Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 13 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Attributes","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 13 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Attributes","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 13 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Attributes","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 13 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > NPC Settings > Attributes","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 13 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > NPC Settings > Attributes","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 14 run data modify block -715 31 90 CustomName set value {"text":"Extra","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 14 run data modify block -683 31 90 CustomName set value {"text":"Extra","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 14 run data modify block -651 31 90 CustomName set value {"text":"Extra","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 14 run data modify block -619 31 90 CustomName set value {"text":"Extra","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 14 run data modify block -619 31 134 CustomName set value {"text":"Extra","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 15 run data modify block -715 31 90 CustomName set value {"text":"Extra > Multiple Bots","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 15 run data modify block -683 31 90 CustomName set value {"text":"Extra > Multiple Bots","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 15 run data modify block -651 31 90 CustomName set value {"text":"Extra > Multiple Bots","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 15 run data modify block -619 31 90 CustomName set value {"text":"Extra > Multiple Bots","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 15 run data modify block -619 31 134 CustomName set value {"text":"Extra > Multiple Bots","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 16 run data modify block -715 31 90 CustomName set value {"text":"Extra > Teleports","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 16 run data modify block -683 31 90 CustomName set value {"text":"Extra > Teleports","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 16 run data modify block -651 31 90 CustomName set value {"text":"Extra > Teleports","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 16 run data modify block -619 31 90 CustomName set value {"text":"Extra > Teleports","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 16 run data modify block -619 31 134 CustomName set value {"text":"Extra > Teleports","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 17 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 17 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 17 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 17 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 17 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 18 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Reach","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 18 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Reach","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 18 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Reach","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 18 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Reach","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 18 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings > Reach","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 19 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Jump Reset Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 19 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Jump Reset Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 19 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Jump Reset Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 19 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Jump Reset Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 19 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings > Jump Reset Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 20 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Aggro Factor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 20 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Aggro Factor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 20 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Aggro Factor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 20 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Aggro Factor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 20 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings > Aggro Factor","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 21 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > W & S-tap Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 21 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > W & S-tap Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 21 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > W & S-tap Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 21 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > W & S-tap Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 21 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings > W & S-tap Chance","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 22 run data modify block -715 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Bot Ping","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 22 run data modify block -683 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Bot Ping","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 22 run data modify block -651 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Bot Ping","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 22 run data modify block -619 31 90 CustomName set value {"text":"Play > Settings > Advanced Settings > Bot Ping","color":"aqua","italic":false}
execute in minecraft:overworld if score .gui gui_page matches 22 run data modify block -619 31 134 CustomName set value {"text":"Play > Settings > Advanced Settings > Bot Ping","color":"aqua","italic":false}
