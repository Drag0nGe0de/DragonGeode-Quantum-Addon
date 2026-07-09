clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"tnt_gs_prev"}]

execute if score .tnt_gs_page gui_page matches 2.. run scoreboard players remove .tnt_gs_page gui_page 1

function gui:features/gamemode_settings/tnt/page
