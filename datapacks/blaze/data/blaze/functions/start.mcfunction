scoreboard players operation terrain_act settings = terrain settings
execute if score terrain settings matches 3 run scoreboard players set terrain_act settings 0
execute if score terrain settings matches 3 if predicate blaze:rand_50 run scoreboard players set terrain_act settings 1
execute if score terrain settings matches 3 if score terrain_act settings matches 1 if predicate blaze:rand_50 run scoreboard players set terrain_act settings 2

execute if score terrain_act settings matches 0 run data modify block 0 32 -24 name set value "blaze:open"
execute if score terrain_act settings matches 1 run data modify block 0 32 -24 name set value "blaze:closed"
execute if score terrain_act settings matches 2 run data modify block 0 32 -24 name set value "blaze:closed_basalt"

setblock 0 31 -24 minecraft:redstone_block
setblock 0 31 -24 minecraft:air

data modify storage blaze:temp sb set from block 0 32 -24

execute if score lava_springs settings matches 0 if score terrain_act settings matches 1..2 run function blaze:lava_springs

scoreboard players operation fort_type_act settings = fort_type settings
execute if score fort_type settings matches 2 run scoreboard players set fort_type_act settings 0
execute if score fort_type settings matches 2 if predicate blaze:rand_50 run scoreboard players set fort_type_act settings 1

execute if score fort_type_act settings matches 1 run function blaze:load_crossing

data modify block 0 32 -24 {} merge from storage blaze:temp sb

schedule function blaze:tp 1t
execute if score editing_loadout flags matches 1 run function blaze:inventory/save_loadout
function blaze:inventory/loadinv
effect give @a fire_resistance 120
gamemode survival @a

scoreboard players set in_lobby flags 0
scoreboard players set rods blazes 0
scoreboard players set @a blazes 0
scoreboard players set timer timer 0
scoreboard players reset * drop_gold_pick
scoreboard players reset * drop_iron_pick

kill @e[type=#blaze:remove]

function blaze:set_actionbar