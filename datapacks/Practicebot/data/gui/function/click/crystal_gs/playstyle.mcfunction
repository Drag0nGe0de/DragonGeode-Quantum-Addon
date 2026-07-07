# GUI System - Click: crystal_gs/playstyle
# Toggle the Crystal Playstyle between Ledge Spammer (.crystal_playstyle=1,
# end_crystal icon) and Anchor Spammer (.crystal_playstyle=2, respawn_anchor icon).
# The button icon can be either end_crystal OR respawn_anchor depending on the
# current state, so we clear BOTH variants before toggling. If .crystal_playstyle
# is unset (default 0), we treat it as Ledge Spammer and switch to Anchor Spammer.
clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]
clear @s minecraft:respawn_anchor[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]

# If currently Anchor Spammer (2) -> switch to Ledge Spammer (1).
# Otherwise (1 or unset) -> switch to Anchor Spammer (2).
execute if score .crystal_playstyle toggles matches 2 run function quantum:options/crystal_playstyle {"playstyle":1}
execute unless score .crystal_playstyle toggles matches 2 run function quantum:options/crystal_playstyle {"playstyle":2}

# Refresh the page so the icon + lore update instantly.
function gui:pages/crystal_general_settings
