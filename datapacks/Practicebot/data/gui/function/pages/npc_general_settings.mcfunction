# GUI System - NPC General Settings Page (page 12) — Dispatcher
# Routes to the correct sub-page based on .npc_gs_page.
# .npc_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 5.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .npc_gs_page gui_page matches 1..2 run scoreboard players set .npc_gs_page gui_page 1
execute if score .npc_gs_page gui_page matches 1 run function gui:pages/npc_gs/p1
execute if score .npc_gs_page gui_page matches 2 run function gui:pages/npc_gs/p2
