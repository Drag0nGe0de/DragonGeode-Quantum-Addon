# GUI System - Mace General Settings Page (page 26) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 3 (Mace).
# Routes to the correct sub-page based on .mace_gs_page.
# .mace_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 7.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .mace_gs_page gui_page matches 1..2 run scoreboard players set .mace_gs_page gui_page 1
# Default the bot armor to Netherite (1) if unset/corrupted.
# .gear toggles: 1 = Netherite, 2 = Diamond. The botgear functions set this
# themselves, but if no gamemode has been selected yet (or the score was wiped),
# the Armor toggle on page 2 would show Netherite as "selected" even though no
# gear was actually applied. Defaulting here ensures the toggle always reflects
# a real state by the time the user can click it.
execute unless score .gear toggles matches 1..2 run scoreboard players set .gear toggles 1
execute if score .mace_gs_page gui_page matches 1 run function gui:features/gamemode_settings/mace/p1
execute if score .mace_gs_page gui_page matches 2 run function gui:features/gamemode_settings/mace/p2
