# GUI System - Click: tnt_gs/blocks_drop

# Toggle the 'Blocks Drop' option (TNT Cart General Settings), then refresh.
# Uses gold_nugget+item_model (not a real campfire) so the player can't
# place it if it briefly ends up in their inventory.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"tnt_gs_blocks_drop"}]

function quantum:options/blocks_drop

function gui:pages/tnt_general_settings
