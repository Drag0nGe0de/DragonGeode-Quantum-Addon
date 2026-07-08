# GUI System - Click: advanced_aggro_7 (Hyper Aggro = factor 300)
clear @s minecraft:nether_bricks[minecraft:custom_data={gui_btn:"advanced_aggro_7"}]
scoreboard players set .factor eval 300
function gui:features/advanced/aggro/page
