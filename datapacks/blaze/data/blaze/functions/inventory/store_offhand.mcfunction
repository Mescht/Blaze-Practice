data modify storage inventory:loadouts selected.offhand append from storage inventory:loadouts selected.inventory_all[-1]

execute store result storage inventory:loadouts selected.offhand[-1].Slot byte 1 run scoreboard players add slot_num inv 106
scoreboard players remove slot_num inv 106