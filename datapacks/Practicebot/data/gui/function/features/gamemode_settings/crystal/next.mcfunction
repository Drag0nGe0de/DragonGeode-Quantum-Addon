clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"crystal_gs_next"}]

execute if score .crystal_gs_page gui_page matches ..1 run scoreboard players add .crystal_gs_page gui_page 1

function gui:features/gamemode_settings/crystal/page
