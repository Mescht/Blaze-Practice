scoreboard players set y collision -35000
scoreboard players operation y collision += start_offset collision
scoreboard players set do_collision_check settings 1
execute if score show_blocked settings matches 2 if score show_bright settings matches 2 run scoreboard players set do_collision_check settings 0
execute if score do_collision_check settings matches 1 as 0-0-0-0-AEC at @s run function blaze:collision_check/step_y