clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]
clear @s minecraft:respawn_anchor[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]

execute if score .crystal_playstyle toggles matches 1 run return run function quantum:options/crystal_playstyle {"playstyle":2}
execute if score .crystal_playstyle toggles matches 2 run return run function quantum:options/crystal_playstyle {"playstyle":1}

function gui:features/gamemode_settings/crystal/page
