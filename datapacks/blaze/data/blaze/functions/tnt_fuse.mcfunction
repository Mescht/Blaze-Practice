execute as @s store result score fuse tnt_fuse run data get entity @s Fuse 0.5

scoreboard players operation seconds tnt_fuse = fuse tnt_fuse
scoreboard players operation seconds tnt_fuse /= 10 c
scoreboard players operation tenths tnt_fuse = fuse tnt_fuse
scoreboard players operation tenths tnt_fuse %= 10 c

setblock 0 2 0 air
setblock 0 2 0 oak_sign{Text1:'[{"text":"","color":"red"},{"score":{"name":"seconds","objective":"tnt_fuse"}},{"text":"."},{"score":{"name":"tenths","objective":"tnt_fuse"}},{"text":"s"}]'} replace

data merge entity @s {CustomNameVisible:1b}
data modify entity @s CustomName set from block 0 2 0 Text1