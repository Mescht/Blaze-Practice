# calculates value of the bivariate tirngular distribution at x,y

scoreboard players operation tx collision = x collision
scoreboard players operation tx collision -= step_size collision
scoreboard players remove tx collision 5000
execute if score tx collision matches 0.. run scoreboard players operation tx collision *= -1 c
scoreboard players add tx collision 40000

scoreboard players operation ty collision = y collision
scoreboard players remove ty collision 5000
execute if score ty collision matches 0.. run scoreboard players operation ty collision *= -1 c
scoreboard players add ty collision 40000

scoreboard players operation weight collision = tx collision
scoreboard players operation weight collision *= ty collision
scoreboard players operation weight collision /= 1000000 c

