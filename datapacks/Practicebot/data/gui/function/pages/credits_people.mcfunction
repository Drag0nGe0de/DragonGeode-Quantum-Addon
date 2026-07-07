# GUI System - Important People Page (page 24) — Dispatcher
# Routes to the correct sub-page based on .credits_people_page.
# .credits_people_page: 1 = first 4 people, 2 = remaining 3 people.
# Default to page 1 if the score is unset/corrupted (e.g. after reload).
execute unless score .credits_people_page gui_page matches 1..2 run scoreboard players set .credits_people_page gui_page 1
execute if score .credits_people_page gui_page matches 1 run function gui:pages/credits_people/p1
execute if score .credits_people_page gui_page matches 2 run function gui:pages/credits_people/p2
