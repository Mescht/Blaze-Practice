execute as @s store result score health blaze_health run data get entity @s Health 1
scoreboard players operation ones blaze_health = health blaze_health
scoreboard players operation ones blaze_health /= 2 c

scoreboard players operation tenths blaze_health = health blaze_health
scoreboard players operation tenths blaze_health %= 2 c
scoreboard players operation tenths blaze_health *= 5 c

setblock 0 2 0 air
setblock 0 2 0 oak_sign{Text1:'[{"text":"","color":"gold"},{"score":{"name":"ones","objective":"blaze_health"}},{"text":"."},{"score":{"name":"tenths","objective":"blaze_health"}},{"text":"❤"}]'} replace

data merge entity @s {CustomNameVisible:1b}
data modify entity @s CustomName set from block 0 2 0 Text1