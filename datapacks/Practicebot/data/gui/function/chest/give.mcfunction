# Chest GUI — Give Summoner Item
# Player runs this once to get the Quantum AI nether star.
# Hold the nether star in your main hand to summon a chest minecart GUI
# floating barely in front of your eyes.
#
# Run:  /function gui:chest/give

# Remove any existing summoner stars first (prevents stacking duplicates).
clear @s minecraft:nether_star[minecraft:custom_data={gui_chest:1b}]

# Give the new summoner star.
give @s minecraft:nether_star[minecraft:custom_data={gui_chest:1b},minecraft:item_name='{"text":"Quantum AI","color":"aqua","italic":false}',minecraft:enchantment_glint_override=true] 1

tellraw @s {"text":"Hold the Quantum AI nether star to summon a chest minecart GUI in front of you.","color":"aqua","italic":false}
tellraw @s {"text":"Switch to another item to dismiss the GUI.","color":"gray","italic":true}
