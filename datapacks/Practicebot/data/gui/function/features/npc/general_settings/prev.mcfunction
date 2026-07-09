clear @s minecraft:arrow[minecraft:custom_data={gui_btn:"npc_gs_prev"}]

execute if score .npc_gs_page gui_page matches 2.. run scoreboard players remove .npc_gs_page gui_page 1

function gui:features/npc/general_settings/page
