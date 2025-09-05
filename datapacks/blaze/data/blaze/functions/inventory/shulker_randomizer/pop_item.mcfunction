data remove storage inventory:loadouts shulker.items[0]

scoreboard players remove r rng 1
execute if score r rng matches 1.. run function blaze:inventory/shulker_randomizer/pop_item