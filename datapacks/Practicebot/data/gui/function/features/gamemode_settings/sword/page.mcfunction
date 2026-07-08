# GUI System - Sword General Settings Page (page 28) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 5 (Sword / OP
# Sword — the gamemode button is labelled "OP Sword" but it runs
# quantum:options/sword, hence the page name).
# Routes to the correct sub-page based on .sword_gs_page.
# .sword_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 3.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .sword_gs_page gui_page matches 1..2 run scoreboard players set .sword_gs_page gui_page 1
# Default the bot armor to Netherite (1) if unset/corrupted.
# .gear toggles: 1 = Netherite, 2 = Diamond. See mace_general_settings for
# the full rationale.
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .sword_gs_page gui_page matches 1 run function gui:features/gamemode_settings/sword/p1
execute if score .sword_gs_page gui_page matches 2 run function gui:features/gamemode_settings/sword/p2
