clear @s minecraft:player_head[minecraft:custom_data={gui_btn:"credits_discord"}]

title @s actionbar {"text":"Discord link sent to chat! Close barrel and click it.","color":"aqua"}

tellraw @a {"text":"","extra":[{"text":"Click here to join the Discord server!","color":"blue","underlined":true,"bold":true,"click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"},"hover_event":{"action":"show_text","value":{"text":"https://discord.gg/tD9jNndhxd","color":"aqua"}}},{"text":"\nOr copy/paste this link: ","color":"gray","click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"}},{"text":"https://discord.gg/tD9jNndhxd","color":"blue","underlined":true,"click_event":{"action":"open_url","url":"https://discord.gg/tD9jNndhxd"},"hover_event":{"action":"show_text","value":{"text":"Click to open the Discord invite!","color":"aqua"}}}]}

function gui:features/credits/support
