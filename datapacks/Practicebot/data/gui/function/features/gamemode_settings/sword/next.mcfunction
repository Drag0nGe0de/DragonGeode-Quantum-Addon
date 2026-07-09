clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"sword_gs_next"}]

execute if score .sword_gs_page gui_page matches ..1 run scoreboard players add .sword_gs_page gui_page 1

function gui:features/gamemode_settings/sword/page
