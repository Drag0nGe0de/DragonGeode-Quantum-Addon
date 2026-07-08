# GUI System - Click: advanced_aggro_4 (Balanced = factor -50)
clear @s minecraft:grass_block[minecraft:custom_data={gui_btn:"advanced_aggro_4"}]
scoreboard players set .factor eval -50
function gui:features/advanced/aggro/page
