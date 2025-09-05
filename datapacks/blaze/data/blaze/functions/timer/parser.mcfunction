# timer minutes
execute if score minutes timer matches 0 run data modify storage blaze:timeparser minutes set value "{\"text\":\"\"}"
execute if score minutes timer matches 1.. run data modify storage blaze:timeparser minutes set value "[{\"score\":{\"name\":\"minutes\",\"objective\":\"timer\"}},{\"text\":\"m \"}]"

# timer seconds
execute if score thousth timer matches 10.. run data modify storage blaze:timeparser seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer\"}},{\"text\":\".\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer\"}},{\"text\":\"s\"}]"
execute if score thousth timer matches ..9 run data modify storage blaze:timeparser seconds set value "[{\"score\":{\"name\":\"seconds\",\"objective\":\"timer\"}},{\"text\":\".0\"},{\"score\":{\"name\":\"thousth\",\"objective\":\"timer\"}},{\"text\":\"s\"}]"

# assemble time string
data modify storage blaze:timeparser time_string set value "[{\"color\":\"gold\",\"nbt\":\"minutes\",\"storage\":\"blaze:timeparser\",\"interpret\":true},{\"nbt\":\"seconds\",\"storage\":\"blaze:timeparser\",\"interpret\":true}]"