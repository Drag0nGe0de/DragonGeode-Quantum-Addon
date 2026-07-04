# GUI System - Click: settings
clear @s minecraft:command_block[minecraft:custom_data={gui_btn:"settings"}]
tellraw @s {"text":"Settings","color":"lime"}
function gui:pages/play
