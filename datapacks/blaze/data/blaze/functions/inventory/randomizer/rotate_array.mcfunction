data modify storage inventory:loadouts randomizer.availableSlots append from storage inventory:loadouts randomizer.availableSlots[0]
data remove storage inventory:loadouts randomizer.availableSlots[0]

scoreboard players remove r rng 1

execute if score r rng matches 1.. run function blaze:inventory/randomizer/rotate_array