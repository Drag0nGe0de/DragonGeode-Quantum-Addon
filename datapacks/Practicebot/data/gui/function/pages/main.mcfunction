# GUI System - Main Page
# Barrel layout (3 rows × 9 cols, slots 0-26):
#
#  [F][F][F][F][F][F][F][F][F]   ← Row 1 (slots  0-8 ) – all fillers
#  [F][F][F][P][S][C][F][F][F]   ← Row 2 (slots  9-17) - 3 centered buttons
#  [F][F][F][F][F][F][F][F][F]   ← Row 3 (slots 18-26) – all fillers
#
# F = gray stained glass pane filler
# Buttons: Play(12) Statistics(13) Credits & Support(14)

scoreboard players set .gui gui_page 1

# ── Row 1 ─────────────────────────────────────────────────────────────────────
execute in overworld run item replace block -715 31 90 container.0  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.1  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.2  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.3  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.4  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.5  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.6  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.7  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.8  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1

# Row 2 - buttons in slots 12-14, centered
execute in overworld run item replace block -715 31 90 container.9  with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.10 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.11 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.12 with minecraft:iron_sword[minecraft:item_name='{"text":"Play","color":"lime","italic":false}',minecraft:custom_data={gui_btn:"play"}] 1
execute in overworld run item replace block -715 31 90 container.13 with minecraft:writable_book[minecraft:item_name='{"text":"Statistics","color":"aqua","italic":false}',minecraft:custom_data={gui_btn:"statistics"}] 1
execute in overworld run item replace block -715 31 90 container.14 with minecraft:gold_ingot[minecraft:item_name='{"text":"Credits & Support","color":"gold","italic":false}',minecraft:custom_data={gui_btn:"credits_support"}] 1
execute in overworld run item replace block -715 31 90 container.15 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.16 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.17 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1

# ── Row 3 ─────────────────────────────────────────────────────────────────────
execute in overworld run item replace block -715 31 90 container.18 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.19 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.20 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.21 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.22 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.23 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.24 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.25 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.26 with minecraft:gray_stained_glass_pane[minecraft:item_name='{"text":"","italic":false}',minecraft:custom_data={gui_btn:"filler"}] 1
