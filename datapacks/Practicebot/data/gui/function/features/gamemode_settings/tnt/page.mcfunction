# GUI System - TNT Minecart General Settings Page (page 30) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 1 (TNT Cart).
# Routes to the correct sub-page based on .tnt_gs_page.
# .tnt_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 3.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .tnt_gs_page gui_page matches 1..2 run scoreboard players set .tnt_gs_page gui_page 1
# Default the bot armor to Netherite (1) if unset/corrupted.
# .gear toggles: 1 = Netherite, 2 = Diamond. See mace_general_settings for
# the full rationale.
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .tnt_gs_page gui_page matches 1 run function gui:features/gamemode_settings/tnt/p1
execute if score .tnt_gs_page gui_page matches 2 run function gui:features/gamemode_settings/tnt/p2
