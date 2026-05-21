
# check for resets
execute as @a[scores={drop_iron_pick=1..}] unless score in_lobby flags matches 1 in minecraft:the_nether run function blaze:reset
execute as @a[scores={drop_gold_pick=1..}] unless score in_lobby flags matches 1 in minecraft:the_nether run function blaze:reset
execute as @a[scores={death=1..}] in minecraft:the_nether run function blaze:reset
execute as @a at @s if block ~ ~ ~-0.3 nether_portal run function blaze:finish
execute as @a at @s if block ~ ~ ~0.3 nether_portal run function blaze:finish
execute as @a at @s if block ~-0.3 ~ ~ nether_portal run function blaze:finish
execute as @a at @s if block ~0.3 ~ ~ nether_portal run function blaze:finish

# run timer
execute if score in_lobby flags matches 0 run function blaze:timer/timer

# calculate spawning potential
execute if score in_lobby flags matches 0 run function blaze:calc_potential

# actionbar display
execute if score in_lobby flags matches 0 run title @a actionbar [{"nbt":"text","storage":"blaze:display","interpret":true}]

# kill out of map player
execute as @a[gamemode=survival] at @s if entity @s[y=20,dy=-10] run function blaze:reset

# run gui
execute if score in_lobby flags matches 1 run function blaze:gui/main

# loadout rename check
execute if score in_lobby flags matches 1 unless score editing_loadout flags matches 1 run function blaze:inventory/rename/check

# repair lobby
scoreboard players enable @a repair
execute if entity @a[scores={repair=1..}] in minecraft:the_end run function blaze:repair

# tnt fuse
execute if score tnt_fuse settings matches 0 as @e[type=tnt] in the_nether run function blaze:tnt_fuse

# blaze hp
execute if score blaze_health settings matches 0 as @e[type=blaze] in the_nether run function blaze:blaze_health

# spawner timer
data merge entity @e[tag=spawner_timer,limit=1] {CustomNameVisible:0b}
execute if score spawner_timer settings matches 0 in the_nether run function blaze:spawner_timer

# disable spawner
execute in the_nether if score blaze_spawns settings matches 1 run data modify block 0 70 0 Delay set value 1

# count blaze rods
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"},Age:0s}] unless data entity @s Thrower run function blaze:count_rods