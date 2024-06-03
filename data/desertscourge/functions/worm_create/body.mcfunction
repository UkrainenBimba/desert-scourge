data merge entity @s {billboard:"fixed",Tags:["worm","worm.ai.body"],item:{id:"minecraft:firework_star",count:1,components:{"custom_model_data":2385703}},teleport_duration:2,interpolation_duration:3,transformation:{scale:[2.5f,2.5f,2.5f]},brightness:{block:0,sky:15},CustomName:'{"fallback":"Desert Scourge","translate":"mob.desert_scourge.name"}'}
summon pig ~ ~ ~ {Silent:1b,DeathLootTable:"",NoAI:1b,Health:1024f,Tags:["worm.hitbox","set.scores"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Attributes:[{Name:"generic.fall_damage_multiplier",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.gravity",Base:0},{Name:"generic.jump_strength",Base:0},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.max_health",Base:1024},{Name:"generic.movement_speed",Base:0},{Name:"generic.scale",Base:4},{Name:"generic.step_height",Base:0}],Team:"noCol"}
scoreboard players operation @s mobID = *cloud mobID
scoreboard players operation @s wormPart = *part math
scoreboard players operation @e[type=pig,tag=worm.hitbox,tag=set.scores,limit=1] mobID = *cloud mobID
scoreboard players operation @e[type=pig,tag=worm.hitbox,tag=set.scores,limit=1] wormPart = *part math
tag @e[type=pig,tag=worm.hitbox,tag=set.scores,limit=1] remove set.scores
scoreboard players operation @s wormZRot = *part math
scoreboard players operation @s wormZRot *= *20 const
scoreboard players operation @s wormZRot %= *720 const
scoreboard players operation @s wormDeathTimer = *part math
scoreboard players add *part math 1