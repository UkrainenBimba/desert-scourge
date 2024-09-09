$item replace entity 0-0-0-0-0 container.0 from entity @s weapon.$(hand)
execute store result score *itemDamage math run data get entity 0-0-0-0-0 item.components."minecraft:damage"
scoreboard players remove *itemDamage math 19
$item modify entity @s weapon.$(hand) desertscourge:bag_of_winds/set_damage
scoreboard players reset *itemDamage math
$execute if items entity @s weapon.$(hand) heart_of_the_sea[custom_data={bag_of_winds:1},damage=20] run item replace entity @s weapon.$(hand) with bundle 1