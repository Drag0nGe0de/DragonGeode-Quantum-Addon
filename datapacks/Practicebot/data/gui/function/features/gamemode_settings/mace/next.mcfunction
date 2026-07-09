clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"mace_gs_next"}]

execute if score .mace_gs_page gui_page matches ..1 run scoreboard players add .mace_gs_page gui_page 1

function gui:features/gamemode_settings/mace/page
