# GUI System - Click: credits_discord
# Print the Discord invite link in chat as a clearly clickable link.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]

# Show an actionbar message so the player knows a link was sent to chat.
# The actionbar is visible even while the barrel GUI is still open, so the
# player knows to close the barrel (ESC) and check chat for the clickable link.
title @s actionbar {"text":"Discord link sent to chat! Close barrel and click it.","color":"aqua"}

# Broadcast the Discord link to all players as a clickable chat message.
# Uses the 1.21.6+ text component format: click_event (snake_case) with "url"
# instead of the old clickEvent/value format. The entire first line is one big
# clickable link, and the second line shows the raw URL as a second fallback.
tellraw @a {"text":"","extra":[{"text":"Click here to join the Discord server!","color":"blue","underlined":true,"bold":true,"click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"},"hover_event":{"action":"show_text","value":{"text":"https://discord.gg/tD9jNndhxd","color":"aqua"}}},{"text":"\nOr copy/paste this link: ","color":"gray","click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"}},{"text":"https://discord.gg/tD9jNndhxd","color":"blue","underlined":true,"click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"},"hover_event":{"action":"show_text","value":{"text":"Click to open the Discord invite!","color":"aqua"}}}]}

# Refresh the page.
function gui:pages/credits_support
