execute store result entity 0-0-0-0-AEC Pos[0] double 0.0001 run scoreboard players get x collision

scoreboard players set c collision 0
execute if score show_blocked settings matches 0..1 run function blaze:collision_check/collision_check
execute if score show_bright settings matches 0..1 run function blaze:collision_check/light_check
execute if score b collision matches 1.. run function blaze:tri_dist/calc
execute if score b collision matches 0 if score c collision matches 1.. run function blaze:tri_dist/calc

execute if score b collision matches 1.. run scoreboard players operation sum_b collision += weight collision
execute if score c collision matches 1.. run scoreboard players operation sum collision += weight collision

scoreboard players operation x collision += step_size collision

execute if score x collision matches ..45000 at 0-0-0-0-AEC run function blaze:collision_check/step_x
