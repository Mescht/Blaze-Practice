# get nuber of available slots
execute store result score mod rng run data get storage inventory:loadouts randomizer.availableSlots
function blaze:random/generate

# recursively rotate array to get the n-th element to the start
execute if score r rng matches 1.. run function blaze:inventory/randomizer/rotate_array

# change slot number and remove that number from available slots
data modify storage inventory:loadouts randomizer.stack[0].Slot set from storage inventory:loadouts randomizer.availableSlots[0]
data remove storage inventory:loadouts randomizer.availableSlots[0]

# move element from stack to output
data modify storage inventory:loadouts randomizer.inventory append from storage inventory:loadouts randomizer.stack[0]
data remove storage inventory:loadouts randomizer.stack[0]

# loop until stack is empty
execute if data storage inventory:loadouts randomizer.stack[0] run function blaze:inventory/randomizer/loop_slots