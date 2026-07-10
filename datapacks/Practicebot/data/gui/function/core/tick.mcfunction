
scoreboard players set .adv_reach var 0
execute store result score .adv_reach var run scoreboard players get @a[tag=xlib_bot,limit=1] reach
execute unless score .adv_reach var matches 1..255 run scoreboard players set @a[tag=xlib_bot] reach 28

execute as @a run scoreboard players set @s gui_hold 0
execute as @a if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data~{gui_chest:1b}] run scoreboard players set @s gui_hold 1

execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".gui_item run kill @s

scoreboard players set .gui_cleared var 0
execute if entity @a[scores={gui_hold=1}] store result score .gui_cleared var run clear @a #gui:gui_items[minecraft:custom_data~{gui_item:1b}]

function gui:chest/tick

execute if score .gui_cleared var matches 1.. as @a[scores={gui_hold=1}] run function gui:ui/refresh
