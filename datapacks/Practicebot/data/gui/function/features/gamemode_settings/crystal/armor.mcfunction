clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_armor"}]

execute if score .gear toggles matches 1 as @a[tag=xlib_bot] run return run function quantum:botgear/dia
execute if score .gear toggles matches 2 as @a[tag=xlib_bot] run return run function quantum:botgear/neth

function gui:features/gamemode_settings/crystal/page
