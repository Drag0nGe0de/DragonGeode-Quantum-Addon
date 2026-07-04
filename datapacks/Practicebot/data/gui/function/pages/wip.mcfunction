# GUI System — WIP Sub-page
# Barrel layout:
#
#  [F][F][F][F][F][F][F][F][F]   ← Row 1 (slots  0-8 ) – all fillers
#  [F][F][F][F][R][F][F][F][F]   ← Row 2 (slots  9-17) – WIP glass in centre (slot 13)
#  [B][F][F][F][F][F][F][F][F]   ← Row 3 (slots 18-26) – Back feather (slot 18)
#
# R = red stained glass  "Currently in development!"
# B = feather            "Back"

scoreboard players set .gui gui_page 3

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

# ── Row 2 – WIP message in centre (slot 13) ───────────────────────────────────
execute in overworld run item replace block -715 31 90 container.9  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.10 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.11 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.12 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.13 with minecraft:red_stained_glass[minecraft:item_name={"text":"Currently in development!","color":"red","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.14 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.15 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.16 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.17 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1

# ── Row 3 – Back feather (slot 18), rest fillers ─────────────────────────────
execute in overworld run item replace block -715 31 90 container.18 with minecraft:feather[minecraft:item_name={"text":"Back","italic":false},minecraft:custom_data={gui_btn:"back"}] 1
execute in overworld run item replace block -715 31 90 container.19 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.20 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.21 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.22 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.23 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.24 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.25 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.26 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
