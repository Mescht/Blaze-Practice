execute store result score timer spawner_timer run data get block 0 70 0 Delay 0.5

scoreboard players operation seconds spawner_timer = timer spawner_timer
scoreboard players operation seconds spawner_timer /= 10 c
scoreboard players operation tenths spawner_timer = timer spawner_timer
scoreboard players operation tenths spawner_timer %= 10 c

setblock 0 2 0 air
setblock 0 2 0 oak_sign{Text1:'[{"text":"","color":"dark_aqua"},{"score":{"name":"seconds","objective":"spawner_timer"}},{"text":"."},{"score":{"name":"tenths","objective":"spawner_timer"}},{"text":"s"}]'} replace

data merge entity @e[tag=spawner_timer,limit=1] {CustomNameVisible:1b}
data modify entity @e[tag=spawner_timer,limit=1] CustomName set from block 0 2 0 Text1