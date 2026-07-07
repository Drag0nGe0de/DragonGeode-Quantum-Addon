# GUI System - Click: advanced_reach_1 (16 = 1.6 block reach)
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"advanced_reach_1"}]
function quantum:options/set_reach {"reach":"16"}
function gui:pages/advanced/reach
