# clear all storages
data remove storage inventory:loadouts selected.offhand
data remove storage inventory:loadouts selected.armor
data remove storage inventory:loadouts selected.hotbar
data remove storage inventory:loadouts selected.inventory

data remove storage inventory:loadouts selected.commands

data remove storage inventory:loadouts selected.shulkers

# get number of used slots
execute store result score slot_count inv run data get storage inventory:loadouts selected.inventory_all

# sort inventory recursively
execute if score slot_count inv matches 1.. run function blaze:inventory/sortinv_rec