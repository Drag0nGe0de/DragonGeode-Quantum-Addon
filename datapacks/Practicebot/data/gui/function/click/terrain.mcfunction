# GUI System - Click: terrain
clear @s minecraft:grass_block[minecraft:custom_data={gui_btn:"terrain"}]
tellraw @s {"text":"Terrain","color":"lime"}
function gui:pages/play
