clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"crystal_gs_prev"}]

execute if score .crystal_gs_page gui_page matches 2.. run scoreboard players remove .crystal_gs_page gui_page 1

function gui:features/gamemode_settings/crystal/page
