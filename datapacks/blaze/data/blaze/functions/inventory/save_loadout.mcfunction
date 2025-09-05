# store inventory
execute as @p run function blaze:inventory/storeinv

# copy data to selected loadout
data modify storage inventory:loadouts loadouts[{selected:1b}] set from storage inventory:loadouts selected

# edit sign data
data merge block 3 68 -28 {Text3:'{"text":"[Edit]","color":"gold","clickEvent":{"action":"run_command","value":"function blaze:inventory/edit_loadout"}}'}

clear @a
gamemode survival @a

execute as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

scoreboard players reset editing_loadout flags