data modify storage inventory:loadouts selected.armor append from storage inventory:loadouts selected.inventory_all[-1]

execute store result storage inventory:loadouts selected.armor[-1].Slot byte 1 run scoreboard players remove slot_num inv 100
scoreboard players add slot_num inv 100