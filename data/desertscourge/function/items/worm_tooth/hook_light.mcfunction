scoreboard players set @e[type=item_display,tag=worm.tooth.proj,tag=save.proj,distance=..32,limit=1] wormToothTimer -2
scoreboard players operation @s wormToothID = @e[type=item_display,tag=worm.tooth.proj,tag=save.proj,distance=..32,limit=1] wormToothID
damage @s 6 player_attack by @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1]
attribute @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] generic.follow_range modifier add item.worm_tooth.follow_range -1 add_multiplied_total
data modify entity @s HurtTime set value 0s