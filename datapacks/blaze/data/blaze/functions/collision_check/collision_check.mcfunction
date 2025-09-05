execute positioned ~-0.3 ~ ~-0.3 unless predicate blaze:collision run scoreboard players set c collision 1
execute positioned ~0.3 ~ ~-0.3 unless predicate blaze:collision run scoreboard players set c collision 1
execute positioned ~-0.3 ~ ~0.3 unless predicate blaze:collision run scoreboard players set c collision 1
execute positioned ~0.3 ~ ~0.3 unless predicate blaze:collision run scoreboard players set c collision 1

execute positioned ~0.075 ~ ~0.075 unless predicate blaze:collision_fence run scoreboard players set c collision 1
execute positioned ~-0.075 ~ ~0.075 unless predicate blaze:collision_fence run scoreboard players set c collision 1
execute positioned ~0.075 ~ ~-0.075 unless predicate blaze:collision_fence run scoreboard players set c collision 1
execute positioned ~-0.075 ~ ~-0.075 unless predicate blaze:collision_fence run scoreboard players set c collision 1

execute if score entity_collision settings matches 0 run function blaze:collision_check/collision_check_entity

execute if score c collision matches 1.. if score show_blocked settings matches 0 run particle minecraft:dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force