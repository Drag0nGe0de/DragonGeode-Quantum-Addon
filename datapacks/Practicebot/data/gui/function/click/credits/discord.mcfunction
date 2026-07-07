# GUI System - Click: credits_discord
# Print the Discord invite link in chat with a clickable URL.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]

# Broadcast the Discord link to all players as a clickable chat message.
tellraw @a {"text":"","extra":[{"text":"Click here to join the server or copy and paste it to give it to others!\n","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/tD9jNndhxd"},"hoverEvent":{"action":"show_text","value":{"text":"Open Discord invite","color":"blue"}}},{"text":"https://discord.gg/tD9jNndhxd","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/tD9jNndhxd"},"hoverEvent":{"action":"show_text","value":{"text":"Click to open!","color":"aqua"}}}]}

# Refresh the page.
function gui:pages/credits_support
