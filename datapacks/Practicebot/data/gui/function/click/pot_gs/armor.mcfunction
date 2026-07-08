# GUI System - Click: pot_gs/armor
# Toggle the bot's armor set between Netherite (.gear=1) and Diamond (.gear=2).
# Uses gold_nugget+item_model (not a real helmet) so the player can't equip it.
# The botgear functions run as the bot (they do `clear @s` + item replace on @s),
# so we must use `as @a[tag=xlib_bot]` to change the executor to the bot before
# calling them. The botgear function itself sets .gear toggles to the new value
# and recolors the in-world "Netherite gear" / "Diamond gear" item_displays.
# .gear is defaulted to 1 (Netherite) by the page dispatcher, so it is always
# 1 or 2 by the time the user can click this button.
clear @s minecraft:gold_nugget[minecraft:custom_data={gui_btn:"pot_gs_armor"}]

# Explicit toggle: Netherite (1) -> Diamond (2), and vice versa.
# IMPORTANT: use `return run` on the first branch. Without it, both execute
# lines run sequentially -- line 1 sets .gear to 2 (via botgear/dia), then
# line 2 sees the new value (matches 2) and immediately flips it back to 1
# (via botgear/neth), so clicking Netherite appears to do nothing.
# `return run` exits this function after the first matching branch.
execute if score .gear toggles matches 1 as @a[tag=xlib_bot] run return run function quantum:botgear/dia
execute if score .gear toggles matches 2 as @a[tag=xlib_bot] run return run function quantum:botgear/neth

# Refresh the page so the icon + lore update instantly.
function gui:pages/pot_general_settings
