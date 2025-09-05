execute store result entity 0-0-0-0-AEC Pos[2] double 0.0001 run scoreboard players get y collision

scoreboard players set x collision -35000
scoreboard players operation x collision += start_offset collision
function blaze:collision_check/step_x

scoreboard players operation y collision += step_size collision

execute if score y collision matches ..45000 at 0-0-0-0-AEC run function blaze:collision_check/step_y