give @a minecraft:oak_sign
setblock 4 149 -30 target
setblock 3 68 -28 air
tellraw @a {"text":"Place the sign and put the new name on it","color":"dark_green"}
scoreboard players set renaming flags 1