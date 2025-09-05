# timer
scoreboard players operation minutes timer = timer timer
scoreboard players operation seconds timer = timer timer
scoreboard players operation thousth timer = timer timer

scoreboard players operation minutes timer /= 1200 c
scoreboard players operation seconds timer /= 20 c
scoreboard players operation seconds timer %= 60 c
scoreboard players operation thousth timer %= 20 c
scoreboard players operation thousth timer *= 5 c