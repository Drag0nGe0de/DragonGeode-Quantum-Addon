# GUI System — Main Page
# Barrel layout (3 rows × 9 cols, slots 0-26):
#
#  [F][F][F][F][F][F][F][F][F]   ← Row 1 (slots  0-8 ) – all fillers
#  [F][F][⚔][🌿][⚙][💰][🟩][F][F]   ← Row 2 (slots  9-17) – 5 centred buttons
#  [F][F][F][F][F][F][F][F][F]   ← Row 3 (slots 18-26) – all fillers
#
# F = gray stained glass pane filler
# Buttons: Gamemode(11) Terrain(12) NPC Settings(13) Statistics(14) Debug(15)

scoreboard players set .gui gui_page 1

# ── Row 1 ─────────────────────────────────────────────────────────────────────
execute in overworld run item replace block -715 31 90 container.0  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.1  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.2  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.3  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.4  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.5  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.6  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.7  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.8  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1

# ── Row 2 – buttons in slots 11-15, padding on each side ─────────────────────
execute in overworld run item replace block -715 31 90 container.9  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.10 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.11 with minecraft:iron_sword[minecraft:item_name={"text":"Gamemode","italic":false},minecraft:custom_data={gui_btn:"gamemode"}] 1
execute in overworld run item replace block -715 31 90 container.12 with minecraft:grass_block[minecraft:item_name={"text":"Terrain","italic":false},minecraft:custom_data={gui_btn:"terrain"}] 1
execute in overworld run item replace block -715 31 90 container.13 with minecraft:command_block[minecraft:item_name={"text":"NPC Settings","italic":false},minecraft:custom_data={gui_btn:"npc_settings"}] 1
execute in overworld run item replace block -715 31 90 container.14 with minecraft:gold_ingot[minecraft:item_name={"text":"Statistics","italic":false},minecraft:custom_data={gui_btn:"statistics"}] 1
execute in overworld run item replace block -715 31 90 container.15 with minecraft:emerald_block[minecraft:item_name={"text":"Debug","italic":false},minecraft:custom_data={gui_btn:"debug"}] 1
execute in overworld run item replace block -715 31 90 container.16 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.17 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1

# ── Row 3 ─────────────────────────────────────────────────────────────────────
execute in overworld run item replace block -715 31 90 container.18 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.19 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.20 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.21 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.22 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.23 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.24 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.25 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.26 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
