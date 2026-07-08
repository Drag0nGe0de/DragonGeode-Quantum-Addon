# GUI System - Pot General Settings Page (page 29) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 2 (Pot / Nethpot
# — both gamemodes share .gm = 2, so both route here).
# Pot only has 17 toggles, which all fit on a single sub-page (slots 0-16).
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .pot_gs_page gui_page matches 1 run scoreboard players set .pot_gs_page gui_page 1
# Default the bot armor to Netherite (1) if unset/corrupted.
# .gear toggles: 1 = Netherite, 2 = Diamond. See mace_general_settings for
# the full rationale.
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .pot_gs_page gui_page matches 1 run function gui:features/gamemode_settings/pot/p1
