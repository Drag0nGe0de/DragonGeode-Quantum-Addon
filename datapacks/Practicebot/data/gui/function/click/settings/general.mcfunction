# GUI System - Click: settings_general
# General Settings — routes to the settings page for the currently selected
# gamemode. TNT Cart (.gm = 1) has page 30, Pot/Nethpot (.gm = 2) has page 29,
# Mace (.gm = 3) has page 26, Crystal/Vanilla (.gm = 4) has page 27, Sword/OP
# Sword (.gm = 5) has page 28; no gamemode selected still falls through to the
# WIP page.
clear @s minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"settings_general"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page

# TNT Cart (.gm = 1) -> TNT Cart General Settings page (page 30)
execute if score .gm gui_page matches 1 run function gui:pages/tnt_general_settings
# Pot / Nethpot (.gm = 2) -> Pot General Settings page (page 29)
execute if score .gm gui_page matches 2 run function gui:pages/pot_general_settings
# Mace (.gm = 3) -> Mace General Settings page (page 26)
execute if score .gm gui_page matches 3 run function gui:pages/mace_general_settings
# Crystal / "Vanilla" (.gm = 4) -> Crystal General Settings page (page 27)
execute if score .gm gui_page matches 4 run function gui:pages/crystal_general_settings
# Sword / OP Sword (.gm = 5) -> Sword General Settings page (page 28)
execute if score .gm gui_page matches 5 run function gui:pages/sword_general_settings
# Everything else -> WIP page (page 3)
execute unless score .gm gui_page matches 1..5 run function gui:pages/wip
