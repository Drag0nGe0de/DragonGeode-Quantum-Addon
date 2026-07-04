# GUI System — Click Detection
# Runs as each nearby player. Checks whether they have a GUI item in their
# inventory (meaning they just clicked/shift-clicked it out of the barrel).

# ── Main-page buttons ────────────────────────────────────────────────────────
execute if items entity @s inventory.* minecraft:iron_sword[minecraft:custom_data~{gui_btn:"gamemode"}] run function gui:click/gamemode
execute if items entity @s inventory.* minecraft:grass_block[minecraft:custom_data~{gui_btn:"terrain"}] run function gui:click/terrain
execute if items entity @s inventory.* minecraft:command_block[minecraft:custom_data~{gui_btn:"npc_settings"}] run function gui:click/npc_settings
execute if items entity @s inventory.* minecraft:gold_ingot[minecraft:custom_data~{gui_btn:"statistics"}] run function gui:click/statistics
execute if items entity @s inventory.* minecraft:emerald_block[minecraft:custom_data~{gui_btn:"debug"}] run function gui:click/debug

# ── Sub-page back button ─────────────────────────────────────────────────────
execute if items entity @s inventory.* minecraft:feather[minecraft:custom_data~{gui_btn:"back"}] run function gui:click/back

# ── Filler cleanup ───────────────────────────────────────────────────────────
# If a player accidentally takes a filler, remove it and refresh the barrel.
execute if items entity @s inventory.* minecraft:gray_stained_glass_pane[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
execute if items entity @s inventory.* minecraft:red_stained_glass[minecraft:custom_data~{gui_btn:"filler"}] run function gui:return_filler
