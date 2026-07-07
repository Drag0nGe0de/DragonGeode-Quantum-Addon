# GUI System - Click: credits_discord
# Print the Discord invite link in chat with a clickable URL.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]

# Broadcast the Discord link to all players as a clickable chat message.
# Line 1: instruction text (plain, not clickable)
# Line 2: the URL itself (underlined, clickable, opens the invite in browser)
tellraw @a {"text":"","extra":[{"text":"Click here to join the server or copy and paste it to give it to others!","color":"aqua"},{"text":"\n","color":"aqua"},{"text":"https://discord.gg/tD9jNndhxd","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/tD9jNndhxd"},"hoverEvent":{"action":"show_text","value":{"text":"Click to open the Discord invite!","color":"aqua"}}}]}

# Refresh the page.
function gui:pages/credits_support
