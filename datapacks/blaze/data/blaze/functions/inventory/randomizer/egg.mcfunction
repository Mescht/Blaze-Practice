# get egg slot
execute store result score r rng run data get storage inventory:loadouts selected.inventory[{id:"minecraft:egg"}].Slot

# remove from available slots
execute if score r rng matches 1.. run function blaze:inventory/randomizer/rotate_array
data remove storage inventory:loadouts randomizer.availableSlots[0]

# move egg to output
data modify storage inventory:loadouts randomizer.inventory append from storage inventory:loadouts randomizer.stack[{id:"minecraft:egg"}]
data remove storage inventory:loadouts randomizer.stack[{id:"minecraft:egg"}]