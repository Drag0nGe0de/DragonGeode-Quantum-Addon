# GUI System - Play Page
# Barrel layout (3 rows x 9 cols, slots 0-26):
#
#  [F][F][F][F][F][F][F][F][F]
#  [F][F][S][G][T][D][O][F][F]
#  [B][F][F][F][F][F][F][F][F]
#
# F = gray stained glass pane filler
# B = back button
# Buttons: Start(11) Gamemode(12) Terrain(13) Difficulty(14) Settings(15)

scoreboard players set .gui gui_page 2

# Row 1
execute in overworld run item replace block -715 31 90 container.0  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.1  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.2  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.3  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.4  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.5  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.6  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.7  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.8  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1

# Row 2 - play options
execute in overworld run item replace block -715 31 90 container.9  with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.10 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.11 with minecraft:green_wool[minecraft:item_name={"text":"Start","color":"green","italic":false},minecraft:custom_data={gui_btn:"start"}] 1
execute in overworld run item replace block -715 31 90 container.12 with minecraft:iron_sword[minecraft:item_name={"text":"Gamemode","italic":false},minecraft:custom_data={gui_btn:"gamemode"}] 1
execute in overworld run item replace block -715 31 90 container.13 with minecraft:grass_block[minecraft:item_name={"text":"Terrain","italic":false},minecraft:custom_data={gui_btn:"terrain"}] 1
execute in overworld run item replace block -715 31 90 container.14 with minecraft:iron_chestplate[minecraft:item_name={"text":"Difficulty","italic":false},minecraft:custom_data={gui_btn:"difficulty"}] 1
execute in overworld run item replace block -715 31 90 container.15 with minecraft:command_block[minecraft:item_name={"text":"Settings","italic":false},minecraft:custom_data={gui_btn:"settings"}] 1
execute in overworld run item replace block -715 31 90 container.16 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.17 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1

# Row 3
execute in overworld run item replace block -715 31 90 container.18 with minecraft:feather[minecraft:item_name={"text":"Back","italic":false},minecraft:custom_data={gui_btn:"back"}] 1
execute in overworld run item replace block -715 31 90 container.19 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.20 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.21 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.22 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.23 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.24 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.25 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
execute in overworld run item replace block -715 31 90 container.26 with minecraft:gray_stained_glass_pane[minecraft:item_name={"text":"","italic":false},minecraft:custom_data={gui_btn:"filler"}] 1
