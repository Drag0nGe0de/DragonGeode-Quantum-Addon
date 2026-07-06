# GUI System - Click: terrain_flat
# Flat Terrain toggle: runs quantum:options/flat_terrain (which flips
# the .flat_terrain toggles score between 0 and 1), then refreshes the
# terrain page so the lore updates immediately.
# This is a TOGGLE button -- it does NOT navigate away from the page.
clear @s minecraft:smooth_stone[minecraft:custom_data={gui_btn:"terrain_flat"}]

# Toggle the flat-terrain option (handles the on/off swap + feedback).
function quantum:options/flat_terrain

# Refresh the terrain page so the lore (Current: Enabled/Disabled)
# updates instantly. Staying on the terrain page lets the player see
# the new state and toggle again if they wish.
function gui:pages/terrain
