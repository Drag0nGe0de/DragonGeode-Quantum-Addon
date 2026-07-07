# GUI System - Mace General Settings Page (page 26) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 3 (Mace).
# Routes to the correct sub-page based on .mace_gs_page.
# .mace_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 6.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .mace_gs_page gui_page matches 1..2 run scoreboard players set .mace_gs_page gui_page 1
execute if score .mace_gs_page gui_page matches 1 run function gui:pages/mace_gs/p1
execute if score .mace_gs_page gui_page matches 2 run function gui:pages/mace_gs/p2
