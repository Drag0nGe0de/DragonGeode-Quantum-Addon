clear @s minecraft:firework_rocket[minecraft:custom_data={gui_btn:"mech_mace_divebomb"}]

scoreboard players set .gui_prev gui_page 1
scoreboard players set .gui_prev2 gui_page 1

function gui:features/play/page

function mech_train:mace/divebomb/init
