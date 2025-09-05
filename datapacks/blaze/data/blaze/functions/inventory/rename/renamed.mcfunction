execute in minecraft:the_nether unless data block 3 68 -28 {Text4:'{"text":""}'} run data modify storage inventory:loadouts loadouts[{selected:1b}].name set from block 3 68 -28 Text4
execute in minecraft:the_nether unless data block 3 68 -28 {Text3:'{"text":""}'} run data modify storage inventory:loadouts loadouts[{selected:1b}].name set from block 3 68 -28 Text3
execute in minecraft:the_nether unless data block 3 68 -28 {Text2:'{"text":""}'} run data modify storage inventory:loadouts loadouts[{selected:1b}].name set from block 3 68 -28 Text2
execute in minecraft:the_nether unless data block 3 68 -28 {Text1:'{"text":""}'} run data modify storage inventory:loadouts loadouts[{selected:1b}].name set from block 3 68 -28 Text1

data modify storage inventory:loadouts selected.name set from storage inventory:loadouts loadouts[{selected:1b}].name

scoreboard players reset renaming flags

execute in minecraft:the_nether run setblock 4 149 -30 oak_wall_sign[facing=east]
execute in minecraft:the_nether run setblock 3 68 -28 minecraft:oak_wall_sign[facing=west]

execute in minecraft:the_nether run data remove block 3 68 -28 Text1
execute in minecraft:the_nether run data modify block 3 68 -28 Text2 set value '{"nbt":"loadouts[{selected:1b}].name","storage":"inventory:loadouts","interpret":"true","color":"gold"}'
execute in minecraft:the_nether run data merge block 3 68 -28 {Text3:'{"text":"[Edit]","color":"gold","clickEvent":{"action":"run_command","value":"function blaze:inventory/edit_loadout"}}'}
