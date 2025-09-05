data modify storage inventory:loadouts shulker.in set from block 0 0 0 Items

data remove storage inventory:loadouts shulker.out

execute if data storage inventory:loadouts shulker.in[0] run function blaze:inventory/shulker_randomizer/find_shulkers