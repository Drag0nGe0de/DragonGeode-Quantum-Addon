# GUI System - Click: advanced_aggro_6 (Very Aggro = factor 200)
clear @s minecraft:red_nether_bricks[minecraft:custom_data={gui_btn:"advanced_aggro_6"}]
scoreboard players set .factor eval 200
function gui:features/advanced/aggro/page
