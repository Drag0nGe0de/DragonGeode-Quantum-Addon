# GUI System — Sync Satellite Barrels
# Copies Items from the main barrel (-715 31 90) to the 4 satellite barrels.
# Called at the end of every page function so all barrels show the same page.
# Also copies the CustomName so all barrels have the same title.

# Satellite barrel coordinates:
#   -683 31 90   (between main and -651)
#   -651 31 90
#   -619 31 90
#   -619 31 134

execute in minecraft:overworld run data modify block -683 31 90 Items set from block -715 31 90 Items
execute in minecraft:overworld run data modify block -651 31 90 Items set from block -715 31 90 Items
execute in minecraft:overworld run data modify block -619 31 90 Items set from block -715 31 90 Items
execute in minecraft:overworld run data modify block -619 31 134 Items set from block -715 31 90 Items
