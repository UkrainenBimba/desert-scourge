execute on origin if entity @s[tag=this.player] run scoreboard players set *buffArrow math 1
execute if score *buffArrow math matches 1 run function desertscourge:items/barinade/buff_arrow
scoreboard players reset *buffArrow math