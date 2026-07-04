# GUI System — Barrel Click Detection
# Runs as a nearby player. Checks the barrel's block data for missing buttons.
# When a player clicks an item out of a barrel, it goes to their CURSOR —
# which is NOT part of inventory.*. This function catches those clicks by
# checking whether the expected item is still in its slot.

# Main page (gui_page 1) — Play(12), Statistics(13), Credits & Support(14)
execute if score .gui gui_page matches 1 unless data block -715 31 90 Items[{Slot:12b,id:"minecraft:iron_sword"}] run function gui:click/play
execute if score .gui gui_page matches 1 unless data block -715 31 90 Items[{Slot:13b,id:"minecraft:writable_book"}] run function gui:click/statistics
execute if score .gui gui_page matches 1 unless data block -715 31 90 Items[{Slot:14b,id:"minecraft:gold_ingot"}] run function gui:click/credits_support

# Play page (gui_page 2) — Start(11), Gamemode(12), Terrain(13), Difficulty(14), Settings(15), Back(18)
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:11b,id:"minecraft:green_wool"}] run function gui:click/start
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:12b,id:"minecraft:iron_sword"}] run function gui:click/gamemode
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:13b,id:"minecraft:grass_block"}] run function gui:click/terrain
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:14b,id:"minecraft:iron_chestplate"}] run function gui:click/difficulty
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:15b,id:"minecraft:command_block"}] run function gui:click/settings
execute if score .gui gui_page matches 2 unless data block -715 31 90 Items[{Slot:18b,id:"minecraft:feather"}] run function gui:click/back

# WIP page (gui_page 3) — Back(18)
execute if score .gui gui_page matches 3 unless data block -715 31 90 Items[{Slot:18b,id:"minecraft:feather"}] run function gui:click/back