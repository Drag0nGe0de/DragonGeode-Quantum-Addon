clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"mech_crystal_dtap"}]

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page

function mech_train:crystal/dtap/init
