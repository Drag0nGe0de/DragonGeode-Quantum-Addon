clear @s minecraft:tnt_minecart[minecraft:custom_data={gui_btn:"mech_cart_2"}]

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page

function mech_train:cart/2/init
