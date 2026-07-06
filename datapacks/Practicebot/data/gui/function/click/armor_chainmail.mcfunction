# GUI System - Click: armor_chainmail
clear @s minecraft:chainmail_chestplate[minecraft:custom_data={gui_btn:"armor_chainmail"}]

# Run the NPC settings toggle function
function npc:settings/toggle/chainmail

# Pop the history stack (like Back) so .gui_prev points to the page above
# NPC Settings. Without this, .gui_prev stays at 9 (NPC Settings) and the Back
# button from NPC Settings would go to NPC Settings (stuck).
scoreboard players operation .gui_back gui_page = .gui_prev gui_page
scoreboard players operation .gui_prev gui_page = .gui_prev2 gui_page
scoreboard players operation .gui_prev2 gui_page = .gui_prev3 gui_page
# Return to NPC settings page (refreshes the button icons + lore)
function gui:pages/npc_settings
