# GUI System - Click: sword_gs/buffs

# Toggle the 'Buffs' option (Sword General Settings), then refresh.
# The button uses the splash_potion model on a gold_nugget base, so the clear
# predicate matches gold_nugget (the underlying item id).
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"sword_gs_buffs"}]

function quantum:options/buffs

function gui:pages/sword_general_settings
