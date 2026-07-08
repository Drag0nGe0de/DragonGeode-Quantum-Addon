# GUI System - Crystal General Settings Page (page 27) — Dispatcher
# Reached from Play -> Settings -> General Settings when .gm = 4 (Crystal /
# "Vanilla" gamemode — the gamemode button is labelled "Vanilla" but it runs
# quantum:options/crystal, hence the page name).
# Routes to the correct sub-page based on .crystal_gs_page.
# .crystal_gs_page gui_page: 1 = first 18 toggles, 2 = remaining 4.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .crystal_gs_page gui_page matches 1..2 run scoreboard players set .crystal_gs_page gui_page 1
# Default the crystal playstyle to Ledge Spammer (1) if unset/corrupted.
# .crystal_playstyle toggles: 1 = Ledge Spammer, 2 = Anchor Spammer.
# Without this, the score defaults to 0 and the Playstyle button shows Ledge
# Spammer as "selected" (green) even though no playstyle was actually enabled,
# and the first click skips straight to Anchor Spammer instead of toggling
# from a properly-initialised Ledge Spammer state.
execute unless score .crystal_playstyle toggles matches 1..2 run scoreboard players set .crystal_playstyle toggles 1
execute if score .crystal_gs_page gui_page matches 1 run function gui:pages/crystal_gs/p1
execute if score .crystal_gs_page gui_page matches 2 run function gui:pages/crystal_gs/p2
