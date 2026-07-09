clear @s minecraft:lime_wool[minecraft:custom_data={gui_btn:"start"}]

clear @a minecraft:nether_star[minecraft:custom_data={gui_chest:1b}]
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Items:[]}
kill @e[type=minecraft:chest_minecart,tag=gui_chest]

function quantum:map/start

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1
function gui:features/main/page
