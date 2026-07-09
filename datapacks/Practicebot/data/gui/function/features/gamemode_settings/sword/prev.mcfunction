clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"sword_gs_prev"}]

execute if score .sword_gs_page gui_page matches 2.. run scoreboard players remove .sword_gs_page gui_page 1

function gui:features/gamemode_settings/sword/page
