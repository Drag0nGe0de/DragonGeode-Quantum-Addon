# GUI System - Click: gamemode
clear @s minecraft:iron_sword[minecraft:custom_data={gui_btn:"gamemode"}]
tellraw @s {"text":"Gamemode","color":"lime"}
function gui:pages/play
