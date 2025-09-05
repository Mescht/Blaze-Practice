tp @e[type=#blaze:remove] 0 -200 0
kill @e[type=#blaze:remove]
kill @a
setblock 0 31 -24 minecraft:redstone_block
setblock 0 31 -24 minecraft:air
scoreboard players set in_lobby flags 1
scoreboard players reset * death
scoreboard players reset * drop_iron_pick
scoreboard players reset * drop_gold_pick
effect clear @a
clear @a