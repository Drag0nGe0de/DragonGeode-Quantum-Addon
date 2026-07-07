# GUI System - Click: advanced_reach_3 (20 = 2.0 block reach)
clear @s minecraft:copper_sword[minecraft:custom_data={gui_btn:"advanced_reach_3"}]
function quantum:options/set_reach {"reach":"20"}
function gui:pages/advanced/reach
