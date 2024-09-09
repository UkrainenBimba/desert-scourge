#> player_motion:internal/math/unitvector
    data modify entity @s Pos set from storage player_motion:math motion
    execute at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp ^ ^ ^1
    data modify storage player_motion:math unitvector set from entity @s Pos
    execute store result score $x_unitvector player_motion.internal.math run data get storage player_motion:math unitvector[0] 10000
    execute store result score $y_unitvector player_motion.internal.math run data get storage player_motion:math unitvector[1] 10000
    execute store result score $z_unitvector player_motion.internal.math run data get storage player_motion:math unitvector[2] 10000
    tp @s 0.0 0.0 0.0