# GUI System - Click: crystal_gs/playstyle
# Toggle the Crystal Playstyle between Ledge Spammer (.crystal_playstyle=1,
# end_crystal icon) and Anchor Spammer (.crystal_playstyle=2, respawn_anchor icon).
# The button icon can be either end_crystal OR respawn_anchor depending on the
# current state, so we clear BOTH variants before toggling.
# .crystal_playstyle is defaulted to 1 (Ledge Spammer) by the page dispatcher
# (crystal_general_settings.mcfunction), so it is always 1 or 2 by the time the
# user can click this button.
clear @s minecraft:end_crystal[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]
clear @s minecraft:respawn_anchor[minecraft:custom_data={gui_btn:"crystal_gs_playstyle"}]

# Explicit toggle: Ledge Spammer (1) -> Anchor Spammer (2), and vice versa.
# crystal_playstyle sets the score AND calls the matching toggles/ function
# (toggles/crystal_spam or toggles/anchor_spam), which recolors the in-world
# item_display entities and shows the actionbar message.
# IMPORTANT: use `return run` on the first branch. Without it, both execute lines
# run sequentially — line 1 sets the score to 2, then line 2 sees the new value
# (matches 2) and immediately flips it back to 1, so clicking Ledge Spammer
# appears to do nothing. `return run` exits this function after the first
# matching branch, exactly like the toggle functions in options/*.mcfunction.
execute if score .crystal_playstyle toggles matches 1 run return run function quantum:options/crystal_playstyle {"playstyle":2}
execute if score .crystal_playstyle toggles matches 2 run return run function quantum:options/crystal_playstyle {"playstyle":1}

# Refresh the page so the icon + lore update instantly.
function gui:pages/crystal_general_settings
