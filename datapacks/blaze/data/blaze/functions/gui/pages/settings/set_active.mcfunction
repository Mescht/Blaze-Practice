data remove storage blaze:gui pages[].active
data modify storage blaze:gui pages[0].active set value 1b
scoreboard players set page gui 0
advancement revoke @s only practice:gui_settings