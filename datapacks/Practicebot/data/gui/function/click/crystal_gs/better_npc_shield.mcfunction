# GUI System - Click: crystal_gs/better_npc_shield

# Toggle the 'NPC Shield+' option (Crystal General Settings), then refresh.
# Uses gold_nugget+item_model (not a real shield) so the player can't equip it.
# The gui_btn tag (crystal_gs_better_npc_shield) distinguishes this slot from
# the regular Shield toggle (crystal_gs_shield).
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"crystal_gs_better_npc_shield"}]

function quantum:options/better_npc_shield

function gui:pages/crystal_general_settings
