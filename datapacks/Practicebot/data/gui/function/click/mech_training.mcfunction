# GUI System - Click: mech_training
# Navigate to the mech training selection page (page 7) for gamemodes that have
# trainings (TNT Cart=1, Mace=3, Vanilla=4). For gamemodes with no trainings
# (None=0, Pot=2, OP Sword=5), navigate to the WIP page (page 3) instead.
clear @s minecraft:diamond[minecraft:custom_data={gui_btn:"mech_training"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page

# Gamemodes with trainings -> mech training selection page (page 7)
execute if score .gm gui_page matches 1 run function gui:pages/mech_training
execute if score .gm gui_page matches 3 run function gui:pages/mech_training
execute if score .gm gui_page matches 4 run function gui:pages/mech_training

# Gamemodes with no trainings -> WIP page (page 3)
execute if score .gm gui_page matches 0 run function gui:pages/wip
execute if score .gm gui_page matches 2 run function gui:pages/wip
execute if score .gm gui_page matches 5 run function gui:pages/wip
