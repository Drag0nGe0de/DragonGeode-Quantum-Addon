# GUI System - Click: credits_discord
# Print the Discord invite link in chat as a clearly clickable link.
clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]

# Broadcast the Discord link to all players as a clickable chat message.
# The clickable text "here" is highlighted (blue, underlined, bold) so it's
# obvious it's a link, and the hover shows the full URL. A second line shows
# the raw URL for players who can't click chat links (e.g. singleplayer with
# links disabled) so they can copy/paste it manually.
tellraw @a {"text":"","extra":[{"text":"Click ","color":"aqua"},{"text":"here","color":"blue","underlined":true,"bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/tD9jNndhxd"},"hoverEvent":{"action":"show_text","value":{"text":"https://discord.gg/tD9jNndhxd","color":"aqua"}}},{"text":" to join the Discord server!","color":"aqua"},{"text":"\nOr copy/paste this link: ","color":"gray"},{"text":"https://discord.gg/tD9jNndhxd","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/tD9jNndhxd"},"hoverEvent":{"action":"show_text","value":{"text":"Click to open the Discord invite!","color":"aqua"}}}]}

# Refresh the page.
function gui:pages/credits_support
