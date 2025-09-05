data modify storage inventory:loadouts shulker.items set from storage inventory:loadouts shulker.in[0].tag.BlockEntityTag.Items

# get number of itmes in shulker
execute store result score mod rng run data get storage inventory:loadouts shulker.items
function blaze:random/generate

# pop random number of items from array
execute if score r rng matches 1.. run function blaze:inventory/shulker_randomizer/pop_item

data modify storage inventory:loadouts shulker.out[0] set from storage inventory:loadouts shulker.items[0]
data modify storage inventory:loadouts shulker.out[0].Slot set from storage inventory:loadouts shulker.in[0].Slot