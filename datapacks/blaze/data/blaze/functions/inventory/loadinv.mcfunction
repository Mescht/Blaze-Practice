setblock 0 0 0 white_shulker_box

# randomizer
scoreboard players operation randomize_act settings = randomize settings
execute if score editing_loadout flags matches 1 run scoreboard players set randomize_act settings 2
execute if score randomize_act settings matches 0..1 run function blaze:inventory/randomizer/randomize

# load hotbar
data modify block 0 0 0 Items set from storage inventory:loadouts selected.hotbar
execute unless score editing_loadout flags matches 1 run function blaze:inventory/shulker_randomizer/randomize
loot replace entity @s hotbar.0 9 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load inventory
execute if score randomize_act settings matches 2 run data modify block 0 0 0 Items set from storage inventory:loadouts selected.inventory
execute if score randomize_act settings matches 0..1 run data modify block 0 0 0 Items set from storage inventory:loadouts randomizer.inventory
execute unless score editing_loadout flags matches 1 run function blaze:inventory/shulker_randomizer/randomize
loot replace entity @s inventory.0 27 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

# load offhand
data modify block 0 0 0 Items set from storage inventory:loadouts selected.offhand
execute unless score editing_loadout flags matches 1 run function blaze:inventory/shulker_randomizer/randomize
loot replace entity @s weapon.offhand mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

#load armor
data modify block 0 0 0 Items set from storage inventory:loadouts selected.armor
#execute unless score editing_loadout flags matches 1 run function blaze:inventory/shulker_randomizer/randomize
loot replace entity @s armor.feet 4 mine 0 0 0 minecraft:air{drop_contents:1b}
data modify block 0 0 0 Items set value []

clear @a glass_pane

setblock 0 0 0 air