execute on target if items entity @s weapon.mainhand heart_of_the_sea[custom_data={bag_of_winds:1},!damage=0] run function desertscourge:sand_tornado/give_item/bundle_of_winds_add
execute on target if items entity @s weapon.mainhand bundle[minecraft:bundle_contents=[]] run function desertscourge:sand_tornado/give_item/bundle_of_winds_1

execute on target if items entity @s weapon.mainhand goat_horn[!custom_data={suspicious_horn:1}] run function desertscourge:sand_tornado/give_item/suspicious_horn

data remove entity @s interaction