clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"gamemode_tnt_cart"}]

scoreboard players set .gm gui_page 1

function quantum:options/cart
tp @s -605.5 31.00 134.5 0 0

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page