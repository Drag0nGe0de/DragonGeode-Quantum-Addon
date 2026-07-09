clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"tnt_gs_next"}]

execute if score .tnt_gs_page gui_page matches ..1 run scoreboard players add .tnt_gs_page gui_page 1

function gui:features/gamemode_settings/tnt/page
