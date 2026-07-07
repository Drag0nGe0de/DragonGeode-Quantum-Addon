# GUI System - Click: advanced_aggro_2 (Very Passive = factor -250)
clear @s minecraft:packed_ice[minecraft:custom_data={gui_btn:"advanced_aggro_2"}]
scoreboard players set .factor eval -250
function gui:pages/advanced/aggro
