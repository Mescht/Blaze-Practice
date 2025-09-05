scoreboard players operation terrain_act settings = terrain settings
execute if score terrain settings matches 2 run scoreboard players set terrain_act settings 0
execute if score terrain settings matches 2 if predicate blaze:rand_50 run scoreboard players set terrain_act settings 1

execute if score terrain_act settings matches 0 run data modify block 0 32 -24 name set value "blaze:open"
execute if score terrain_act settings matches 1 run data modify block 0 32 -24 name set value "blaze:closed"

setblock 0 31 -24 minecraft:redstone_block
setblock 0 31 -24 minecraft:air

tp @a 0 67 -12 0 0
execute if score editing_loadout flags matches 1 run function blaze:inventory/save_loadout
function blaze:inventory/loadinv
effect give @a fire_resistance 120
gamemode survival @a

scoreboard players set in_lobby flags 0
scoreboard players set rods blazes 0
scoreboard players set @a blazes 0
scoreboard players set timer timer 0

kill @e[type=#blaze:remove]

title @a times 5 30 5

function blaze:set_actionbar