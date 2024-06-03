$scoreboard players set *get_angle math $(y)
scoreboard players operation *get_angle math *= *-1 const
execute if score *get_angle math matches ..-1 run scoreboard players add *get_angle math 360
execute store result storage desertscourge:temp sincos.angle int 0.5 run scoreboard players get *get_angle math
function desertscourge:math/trigonometry/sin/get with storage desertscourge:temp sincos
function desertscourge:math/trigonometry/cos/get with storage desertscourge:temp sincos
scoreboard players operation *yaw_sin math = *sin math
scoreboard players operation *yaw_cos math = *cos math

$scoreboard players set *get_angle math $(x)
execute if score *get_angle math matches ..-1 run scoreboard players add *get_angle math 360
execute store result storage desertscourge:temp sincos.angle int 0.5 run scoreboard players get *get_angle math
function desertscourge:math/trigonometry/sin/get with storage desertscourge:temp sincos
function desertscourge:math/trigonometry/cos/get with storage desertscourge:temp sincos
scoreboard players operation *pitch_sin math = *sin math
scoreboard players operation *pitch_cos math = *cos math

data modify storage desertscourge:temp quaternion set value [0f,0f,0f,0f]

scoreboard players operation *q_x math = *yaw_sin math
execute store result storage desertscourge:temp quaternion[0] float -0.000001 run scoreboard players operation *q_x math *= *pitch_cos math

scoreboard players operation *q_y math = *yaw_cos math
execute store result storage desertscourge:temp quaternion[1] float -0.000001 run scoreboard players operation *q_y math *= *pitch_sin math

scoreboard players operation *q_z math = *yaw_sin math
execute store result storage desertscourge:temp quaternion[2] float -0.000001 run scoreboard players operation *q_z math *= *pitch_sin math

scoreboard players operation *q_w math = *yaw_cos math
execute store result storage desertscourge:temp quaternion[3] float 0.000001 run scoreboard players operation *q_w math *= *pitch_cos math

scoreboard players reset *yaw_sin math
scoreboard players reset *yaw_cos math
scoreboard players reset *pitch_sin math
scoreboard players reset *pitch_cos math
scoreboard players reset *sin math
scoreboard players reset *cos math
scoreboard players reset *q_w math
scoreboard players reset *q_x math
scoreboard players reset *q_y math
scoreboard players reset *q_z math
scoreboard players reset *get_angle math