data modify storage inventory:loadouts shulker.out prepend from storage inventory:loadouts shulker.in[0]

execute if data storage inventory:loadouts shulker.in[0].tag.BlockEntityTag.Items run function blaze:inventory/shulker_randomizer/is_shulker

data remove storage inventory:loadouts shulker.in[0]

execute if data storage inventory:loadouts shulker.in[0] run function blaze:inventory/shulker_randomizer/find_shulkers

data modify block 0 0 0 Items set from storage inventory:loadouts shulker.out