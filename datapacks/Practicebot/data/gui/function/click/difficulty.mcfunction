# GUI System - Click: difficulty
clear @s minecraft:iron_chestplate[minecraft:custom_data={gui_btn:"difficulty"}]
tellraw @s {"text":"Difficulty","color":"lime"}
function gui:pages/play
