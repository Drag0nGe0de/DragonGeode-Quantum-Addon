
data merge block -715 31 90 {Items:[{Slot:0b,id:"minecraft:skeleton_skull",count:1,components:{"minecraft:item_name":{text:"Bot Scale",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_scale"}}},{Slot:1b,id:"minecraft:fermented_spider_eye",count:1,components:{"minecraft:item_name":{text:"Bot Slowness",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_slowness"}}},{Slot:2b,id:"minecraft:sugar",count:1,components:{"minecraft:item_name":{text:"Bot Speed",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_bot_speed"}}},{Slot:3b,id:"minecraft:slime_ball",count:1,components:{"minecraft:item_name":{text:"Jump Boost",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_jump_boost"}}},{Slot:4b,id:"minecraft:gold_nugget",count:1,components:{"minecraft:item_model":"minecraft:fishing_rod","minecraft:item_name":{text:"Reach",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_reach"}}},{Slot:5b,id:"minecraft:repeater",count:1,components:{"minecraft:item_name":{text:"Reaction Time",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_react"}}},{Slot:6b,id:"minecraft:armor_stand",count:1,components:{"minecraft:item_name":{text:"Player Scale",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_scale"}}},{Slot:7b,id:"minecraft:soul_sand",count:1,components:{"minecraft:item_name":{text:"Player Slowness",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_slowness"}}},{Slot:8b,id:"minecraft:gold_nugget",count:1,components:{"minecraft:item_model":"minecraft:carrot_on_a_stick","minecraft:item_name":{text:"Player Speed",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_speed"}}},{Slot:9b,id:"minecraft:blaze_powder",count:1,components:{"minecraft:item_name":{text:"Player Strength",color:"aqua",italic:false},"minecraft:custom_data":{gui_btn:"npc_attr_strength"}}},{Slot:10b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:11b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:12b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:13b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:14b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:15b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:16b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:17b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:18b,id:"minecraft:feather",count:1,components:{"minecraft:item_name":{text:"Back",italic:false},"minecraft:tooltip_display":{"hidden_components":["minecraft:lore"]},"minecraft:custom_data":{gui_btn:"back"}}},{Slot:19b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:20b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:21b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:22b,id:"minecraft:lime_wool",count:1,components:{"minecraft:item_name":{text:"Mode: Increase",color:"green",italic:false},"minecraft:lore":[{text:"Click to switch mode",color:"gray",italic:false}],"minecraft:custom_data":{gui_btn:"npc_attr_mode"}}},{Slot:23b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:24b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:25b,id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"",italic:false},"minecraft:tooltip_display":{hide_tooltip:true},"minecraft:custom_data":{gui_btn:"filler"}}},{Slot:26b,id:"minecraft:red_stained_glass",count:1,components:{"minecraft:item_name":{text:"Reset to Defaults",color:"red",italic:false},"minecraft:lore":[{text:"Click to reset all attributes",color:"gray",italic:false}],"minecraft:custom_data":{gui_btn:"npc_attr_reset"}}}]}


scoreboard players operation #attr_int var = .bot_scale var
scoreboard players operation #attr_int var /= .2 Math
scoreboard players operation #attr_dec var = .bot_scale var
scoreboard players operation #attr_dec var %= .2 Math
scoreboard players operation #attr_dec var *= .5 Math
execute store result storage gui:attr_temp value_int int 1 run scoreboard players get #attr_int var
execute store result storage gui:attr_temp value_dec int 1 run scoreboard players get #attr_dec var
data modify storage gui:attr_temp slot set value 0
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_half with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_half with storage gui:attr_temp

scoreboard players operation #attr_disp var = .bot_slowness var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 1
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_disp var = .bot_speed var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 2
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_disp var = .jump_boost var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 3
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_int var = .reach var
scoreboard players operation #attr_int var /= .2 Math
scoreboard players operation #attr_dec var = .reach var
scoreboard players operation #attr_dec var %= .2 Math
scoreboard players operation #attr_dec var *= .5 Math
execute store result storage gui:attr_temp value_int int 1 run scoreboard players get #attr_int var
execute store result storage gui:attr_temp value_dec int 1 run scoreboard players get #attr_dec var
data modify storage gui:attr_temp slot set value 4
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_half with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_half with storage gui:attr_temp

scoreboard players operation #attr_disp var = .react var
execute if score #attr_disp var matches ..-1 run scoreboard players set #attr_disp var 0
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 5
data modify storage gui:attr_temp step set value 5
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_int var = .scale var
scoreboard players operation #attr_int var /= .2 Math
scoreboard players operation #attr_dec var = .scale var
scoreboard players operation #attr_dec var %= .2 Math
scoreboard players operation #attr_dec var *= .5 Math
execute store result storage gui:attr_temp value_int int 1 run scoreboard players get #attr_int var
execute store result storage gui:attr_temp value_dec int 1 run scoreboard players get #attr_dec var
data modify storage gui:attr_temp slot set value 6
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_half with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_half with storage gui:attr_temp

scoreboard players operation #attr_disp var = .slowness var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 7
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_disp var = .speed var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 8
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

scoreboard players operation #attr_disp var = .strength var
scoreboard players add #attr_disp var 1
execute store result storage gui:attr_temp value int 1 run scoreboard players get #attr_disp var
data modify storage gui:attr_temp slot set value 9
data modify storage gui:attr_temp step set value 1
execute if score .var var matches 1 run function gui:features/npc/attributes/lore_inc_int with storage gui:attr_temp
execute unless score .var var matches 1 run function gui:features/npc/attributes/lore_dec_int with storage gui:attr_temp

execute in minecraft:overworld if score .var var matches 1 run data remove block -715 31 90 Items[{Slot:22b}].components."minecraft:item_model"
execute in minecraft:overworld if score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].id set value "minecraft:lime_wool"
execute in minecraft:overworld if score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].components."minecraft:item_name" set value {text:"Mode: Increase",color:"green",italic:false}
execute in minecraft:overworld unless score .var var matches 1 run data remove block -715 31 90 Items[{Slot:22b}].components."minecraft:item_model"
execute in minecraft:overworld unless score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].id set value "minecraft:red_wool"
execute in minecraft:overworld unless score .var var matches 1 run data modify block -715 31 90 Items[{Slot:22b}].components."minecraft:item_name" set value {text:"Mode: Decrease",color:"red",italic:false}

scoreboard players set .gui gui_page 13
function gui:core/sync_barrels
