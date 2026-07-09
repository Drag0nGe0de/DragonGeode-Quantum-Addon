clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"armor_iron"}]

function npc:settings/toggle/iron

scoreboard players operation .gui_back gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev4 gui_page
function gui:features/npc/settings/page
