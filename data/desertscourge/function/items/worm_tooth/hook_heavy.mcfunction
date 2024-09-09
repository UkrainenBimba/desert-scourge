scoreboard players set @e[type=item_display,tag=worm.tooth.proj,tag=save.proj,limit=1] wormToothTimer -3

execute at @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] summon item_display run function desertscourge:items/worm_tooth/hook_heavy2

scoreboard players operation @s wormToothID = @e[type=item_display,tag=worm.tooth.proj,tag=save.proj,limit=1] wormToothID
scoreboard players operation *temp wormToothID = @s wormToothID
attribute @s generic.attack_damage modifier add item.worm_tooth.attack_damage -1 add_multiplied_total