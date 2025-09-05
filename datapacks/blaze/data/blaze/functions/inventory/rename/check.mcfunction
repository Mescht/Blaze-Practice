execute as @a[scores={sneaking=1}] run function blaze:inventory/rename/sneak
execute as @a[scores={sneaking=1..}] unless predicate blaze:sneaking run function blaze:inventory/rename/unsneak

execute if score renaming flags matches 2 in minecraft:the_nether if block 3 68 -28 oak_wall_sign run function blaze:inventory/rename/renamed
execute if score renaming flags matches 1 in minecraft:the_nether if block 3 68 -28 oak_wall_sign run function blaze:inventory/rename/renamed_pre