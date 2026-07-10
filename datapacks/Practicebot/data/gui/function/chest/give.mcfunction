
clear @s minecraft:nether_star[minecraft:custom_data~{gui_chest:1b}]
give @s minecraft:nether_star[minecraft:custom_data={gui_chest:1b},minecraft:item_name={"text":"Quantum AI","color":"aqua","italic":false},minecraft:enchantment_glint_override=true] 1

tellraw @s {"text":"Right click while holding the nether star to open the GUI.","color":"aqua","italic":false}
