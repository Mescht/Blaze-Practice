# set up actionbar display
data modify storage blaze:display used set value []

# Spawning Potential
execute if score actionbar settings matches 0 if score show_blocked settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.blocked
execute if score actionbar settings matches 0 if score show_bright settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.bright
execute if score actionbar settings matches 0 if score show_blocked settings matches 0..1 if score show_bright settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.available

# Timer
execute if score actionbar settings matches 1 run data modify storage blaze:display used append from storage blaze:display components.timer

# Rates
execute if score actionbar settings matches 2 run data modify storage blaze:display used append from storage blaze:display components.rates

# Timer + Rates
execute if score actionbar settings matches 3 run data modify storage blaze:display used append from storage blaze:display components.rates
execute if score actionbar settings matches 3 run data modify storage blaze:display used append from storage blaze:display components.timer

# Everything
execute if score actionbar settings matches 4 if score show_blocked settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.compact.blocked
execute if score actionbar settings matches 4 if score show_bright settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.compact.bright
execute if score actionbar settings matches 4 if score show_blocked settings matches 0..1 if score show_bright settings matches 0..1 run data modify storage blaze:display used append from storage blaze:display components.compact.available
execute if score actionbar settings matches 4 run data modify storage blaze:display used append from storage blaze:display components.rates
execute if score actionbar settings matches 4 run data modify storage blaze:display used append from storage blaze:display components.timer