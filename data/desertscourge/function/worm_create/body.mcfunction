data merge entity @s {billboard:"fixed",Tags:["worm","worm.ai.body"],item:{id:"minecraft:firework_star",count:1,components:{"custom_model_data":2385703}},teleport_duration:2,interpolation_duration:3,transformation:{scale:[2.5f,2.5f,2.5f]},brightness:{block:0,sky:15},CustomName:'{"fallback":"Desert Scourge","translate":"mob.desert_scourge.id"}'}
summon vex ~ ~ ~ {Silent:1b,DeathLootTable:"",NoAI:1b,Health:1024f,Tags:["worm.hitbox","set.scores"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"generic.fall_damage_multiplier",base:0},{id:"generic.follow_range",base:0},{id:"generic.gravity",base:0},{id:"generic.jump_strength",base:0},{id:"generic.knockback_resistance",base:1},{id:"generic.max_health",base:1024},{id:"generic.movement_speed",base:0},{id:"generic.scale",base:8},{id:"generic.step_height",base:0}],Team:"noCol"}
scoreboard players operation @s mobID = *cloud mobID
scoreboard players operation @s wormPart = *part math
scoreboard players operation @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] mobID = *cloud mobID
scoreboard players operation @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] wormPart = *part math
tag @e[type=vex,tag=worm.hitbox,tag=set.scores,limit=1] remove set.scores
scoreboard players operation @s wormZRot = *part math
scoreboard players operation @s wormZRot *= *20 const
scoreboard players operation @s wormZRot %= *720 const
scoreboard players operation @s wormDeathTimer = *part math
scoreboard players add *part math 1