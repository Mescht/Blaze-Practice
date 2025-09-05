execute if score index gui matches 0..13 run function blaze:gui/pages/settings/list_menu

execute if score index gui matches 0 run scoreboard players operation show_blocked settings = value gui
execute if score index gui matches 1 run scoreboard players operation show_bright settings = value gui
execute if score index gui matches 2 run scoreboard players operation terrain settings = value gui
execute if score index gui matches 3 run scoreboard players operation resolution settings = value gui
execute if score index gui matches 3 run function blaze:gui/pages/settings/set_resolution
execute if score index gui matches 4 run scoreboard players operation blaze_spawns settings = value gui
execute if score index gui matches 5 run scoreboard players operation tnt_fuse settings = value gui
execute if score index gui matches 6 run scoreboard players operation blaze_health settings = value gui
execute if score index gui matches 7 run scoreboard players operation spawner_timer settings = value gui
execute if score index gui matches 8 run scoreboard players operation entity_collision settings = value gui
execute if score index gui matches 9 run scoreboard players operation actionbar settings = value gui
execute if score index gui matches 9 run function blaze:set_actionbar