clear @s minecraft:red_sand[minecraft:custom_data={gui_btn:"terrain_badlands"}]

scoreboard players set .terrain terrain 3

title @a actionbar {"text":"Successfully set terrain","color":"green"}
playsound block.beacon.power_select master @a ~ ~ ~ 1 1 1

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page
