# GUI System - Click: settings_general
# General Settings — routes to the settings page for the currently selected
# gamemode. Mace (.gm = 3) has page 26, Crystal/Vanilla (.gm = 4) has page 27;
# every other gamemode (and no gamemode selected) still falls through to the
# WIP page until those pages are implemented.
clear @s minecraft:repeating_command_block[minecraft:custom_data={gui_btn:"settings_general"}]

# Push current page onto history stack before navigating
scoreboard players operation .gui_prev4 gui_page = .gui_prev3 gui_page
scoreboard players operation .gui_prev3 gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui gui_page

# Mace (.gm = 3) -> Mace General Settings page (page 26)
execute if score .gm gui_page matches 3 run function gui:pages/mace_general_settings
# Crystal / "Vanilla" (.gm = 4) -> Crystal General Settings page (page 27)
execute if score .gm gui_page matches 4 run function gui:pages/crystal_general_settings
# Everything else -> WIP page (page 3)
execute unless score .gm gui_page matches 3..4 run function gui:pages/wip
