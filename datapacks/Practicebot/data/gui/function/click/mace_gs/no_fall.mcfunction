# GUI System - Click: mace_gs/no_fall
# Toggle the 'No Fall Damage' option (Mace General Settings), then refresh.
clear @s minecraft:hay_block[minecraft:custom_data={gui_btn:"mace_gs_no_fall"}]

# quantum:options/no_fall flips .no_fall toggles (on->off / off->on).
function quantum:options/no_fall

# Refresh the page so the lore + glint update instantly.
function gui:pages/mace_general_settings
