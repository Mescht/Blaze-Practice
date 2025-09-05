scoreboard players set b collision 0
execute if score c collision matches 0 if predicate blaze:light run scoreboard players set b collision 1
execute if score b collision matches 1.. if score show_bright settings matches 0 run particle minecraft:dust 1 0.7 0 0.3 ~ ~ ~ 0 0 0 0 1 force