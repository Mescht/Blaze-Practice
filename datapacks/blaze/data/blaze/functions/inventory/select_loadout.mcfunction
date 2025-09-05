scoreboard players operation loadout inv %= 5 c
execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

# set selected loadout actice
data remove storage inventory:loadouts loadouts[].selected
execute if score loadout inv matches 0 run data modify storage inventory:loadouts loadouts[0].selected set value 1b
execute if score loadout inv matches 1 run data modify storage inventory:loadouts loadouts[1].selected set value 1b
execute if score loadout inv matches 2 run data modify storage inventory:loadouts loadouts[2].selected set value 1b
execute if score loadout inv matches 3 run data modify storage inventory:loadouts loadouts[3].selected set value 1b
execute if score loadout inv matches 4 run data modify storage inventory:loadouts loadouts[4].selected set value 1b

# update sign
data modify block 3 68 -28 Text2 set value '{"nbt":"loadouts[{selected:1b}].name","storage":"inventory:loadouts","interpret":"true","color":"gold"}'

# copy selected loadout into selected
data modify storage inventory:loadouts selected set from storage inventory:loadouts loadouts[{selected:1b}]