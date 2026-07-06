# GUI System - NPC Attributes Page 1 (sub-page of page 13)
# Barrel layout: Settings(0-9), Back(18), Mode Wool(22)
# Each setting shows 'Click to Increase/Decrease' + current value + delta.
# Mode is controlled by .var var (1=increase, -1=decrease).
# Current values are read from .<name> var via execute store + macros.

execute in minecraft:overworld run data merge block -715 31 90 {Items:[{Slot:0b,id:"minecraft:skeleton_skull",count:1,components:{"minecraft:item_name":{text:"Bot Scale",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_scale"}}},{Slot:1b,id:"minecraft:fermented_spider_eye",count:1,components:{"minecraft:item_name":{text:"Bot Slowness",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_slowness"}}},{Slot:2b,id:"minecraft:sugar",count:1,components:{"minecraft:item_name":{text:"Bot Speed",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_speed"}}},{Slot:3b,id:"minecraft:slime_ball",count:1,components:{"minecraft:item_name":{text:"Jump Boost",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_jump_boost"}}},{Slot:4b,id:"minecraft:fishing_rod",count:1,components:{"minecraft:item_name":{text:"Reach",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_reach"}}},{Slot:5b,id:"minecraft:repeater",count:1,components:{"minecraft:item_name":{text:"Reaction Time",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_react"}}},{Slot:6b,id:"minecraft:armor_stand",count:1,components:{"minecraft:item_name":{text:"Player Scale",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_scale"}}},{Slot:7b,id:"minecraft:soul_sand",count:1,components:{"minecraft:item_name":{text:"Player Slowness",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_slowness"}}},{Slot:8b,id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_name":{text:"Player Speed",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_speed"}}},{Slot:9b,id:"minecraft:blaze_powder",count:1,components:{"minecraft:item_name":{text:"Player Strength",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_strength"}}},{Slot:10b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:11b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:12b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:13b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:14b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:15b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:16b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:17b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:18b,id:"minecraft:feather",count:1,components:{"minecraft:item_name":{text:"Back",italic:false},"minecraft:tooltip_display":{"hidden_components":["minecraft:lore"]},"minecraft:custom_data":{gui_btn:"back"}}},{Slot:19b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:20b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:21b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:22b,id:"minecraft:lime_wool",count:1,components:{"minecraft:item_name":{text:"Mode: Increase",color:"green",italic:false},"minecraft:lore":[{text:"Click to switch mode",color:"gray",italic:false}],"minecraft:custom_data":{gui_btn:"npc_attr_mode"}}},{Slot:23b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:24b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:25b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:26b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}}]}

# -- Dynamic lore per setting (current value + delta) --
# Uses gui:attr_temp storage to pass slot/value/step to macro functions.
# Value computation depends on setting type:
#   half   → score × 0.5 (double), step = 0.5
#   offset → score + 1 (int), step = 1
#   int    → score (int), step = N

# Bot Scale (slot 0, type half, step 0.5d)
execute store result storage gui:attr_temp value double 0.5 run scoreboard players get .bot_scale var
data modify storage gui:attr_temp slot set value 0
data modify storage gui:attr_temp step set value 0.5d
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Bot Slowness (slot 1, type offset, step 1)
scoreboard players operation #attr_disp var = .bot_slowness var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 1
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Bot Speed (slot 2, type offset, step 1)
scoreboard players operation #attr_disp var = .bot_speed var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 2
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Jump Boost (slot 3, type offset, step 1)
scoreboard players operation #attr_disp var = .jump_boost var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 3
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Reach (slot 4, type half, step 0.5d)
execute store result storage gui:attr_temp value double 0.5 run scoreboard players get .reach var
data modify storage gui:attr_temp slot set value 4
data modify storage gui:attr_temp step set value 0.5d
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Reaction Time (slot 5, type int, step 5)
execute store result storage gui:attr_temp value int 1 run scoreboard players get .react var
data modify storage gui:attr_temp slot set value 5
data modify storage gui:attr_temp step set value 5
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Player Scale (slot 6, type half, step 0.5d)
execute store result storage gui:attr_temp value double 0.5 run scoreboard players get .scale var
data modify storage gui:attr_temp slot set value 6
data modify storage gui:attr_temp step set value 0.5d
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Player Slowness (slot 7, type offset, step 1)
scoreboard players operation #attr_disp var = .slowness var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 7
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Player Speed (slot 8, type offset, step 1)
scoreboard players operation #attr_disp var = .speed var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 8
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# Player Strength (slot 9, type offset, step 1)
scoreboard players operation #attr_disp var = .strength var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 9
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:pages/npc_attr/lore_inc with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:pages/npc_attr/lore_dec with storage gui:attr_temp

# -- Mode wool (slot 22) based on .var var --
# .var var = 1: lime wool, 'Mode: Increase' (green)
# .var var != 1: red wool, 'Mode: Decrease' (red)
execute in minecraft:overworld if score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].id set value "minecraft:lime_wool"
execute in minecraft:overworld if score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].components."minecraft:item_name" set value {text:"Mode: Increase",color:"green",italic:false}
execute in minecraft:overworld unless score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].id set value "minecraft:red_wool"
execute in minecraft:overworld unless score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].components."minecraft:item_name" set value {text:"Mode: Decrease",color:"red",italic:false}

scoreboard players set .gui gui_page 13
function gui:core/sync_barrels
