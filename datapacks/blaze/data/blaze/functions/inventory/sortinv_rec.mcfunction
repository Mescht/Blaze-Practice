# store id of last slot in array
execute store result score slot_num inv run data get storage inventory:loadouts selected.inventory_all[-1].Slot

# check for writable book
execute if data storage inventory:loadouts selected.inventory_all[-1].tag.pages run function blaze:custom_commands/extract

# check for shulker
execute if data storage inventory:loadouts selected.inventory_all[-1].tag.BlockEntityTag.Items run function blaze:inventory/shulker_randomizer/add_shulker

# copy element to corresponding array depending of slot id
execute if score slot_num inv matches -106 run function blaze:inventory/store_offhand
execute if score slot_num inv matches 100..103 run function blaze:inventory/store_armor
execute if score slot_num inv matches 9..35 run function blaze:inventory/store_inventory
execute if score slot_num inv matches 0..8 run data modify storage inventory:loadouts selected.hotbar append from storage inventory:loadouts selected.inventory_all[-1]


#remove last elemet from arary
data remove storage inventory:loadouts selected.inventory_all[-1]

# repeat if array not empty
execute if data storage inventory:loadouts selected.inventory_all[] run function blaze:inventory/sortinv_rec