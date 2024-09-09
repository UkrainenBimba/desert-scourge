advancement revoke @s only desertscourge:utility/bag_of_items/use
execute if items entity @s weapon.mainhand heart_of_the_sea[custom_data={bag_of_winds:1}] run function desertscourge:items/bag_of_winds/damage {hand:"mainhand"}
execute if items entity @s weapon.offhand heart_of_the_sea[custom_data={bag_of_winds:1}] run function desertscourge:items/bag_of_winds/damage {hand:"offhand"}

scoreboard players set $strength player_motion.api.launch 8000
execute rotated ~ -20 run function player_motion:api/launch_looking

scoreboard players set @s bagOfWindsCooldown 20
playsound minecraft:entity.bat.takeoff player @a ~ ~1 ~ 0.5 1.5