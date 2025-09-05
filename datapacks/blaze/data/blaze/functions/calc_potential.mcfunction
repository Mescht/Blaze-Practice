scoreboard players operation blocked_per spawns = sum collision
scoreboard players operation blocked_per spawns -= min_sum collision
scoreboard players operation blocked_per spawns *= correction collision
scoreboard players operation blocked_per spawns /= max_sum collision

scoreboard players operation blocked_per_L spawns = blocked_per spawns
scoreboard players operation blocked_per_L spawns /= 10 c
scoreboard players operation blocked_per_R spawns = blocked_per spawns
scoreboard players operation blocked_per_R spawns %= 10 c

scoreboard players operation light_per spawns = sum_b collision
scoreboard players operation light_per spawns *= 1000 c
scoreboard players operation light_per spawns /= max_sum collision

scoreboard players operation light_per_L spawns = light_per spawns
scoreboard players operation light_per_L spawns /= 10 c
scoreboard players operation light_per_R spawns = light_per spawns
scoreboard players operation light_per_R spawns %= 10 c

scoreboard players set available_per spawns 1000
scoreboard players operation available_per spawns -= blocked_per spawns
scoreboard players operation available_per spawns -= light_per spawns

scoreboard players operation available_per_L spawns = available_per spawns
scoreboard players operation available_per_L spawns /= 10 c
scoreboard players operation available_per_R spawns = available_per spawns
scoreboard players operation available_per_R spawns %= 10 c