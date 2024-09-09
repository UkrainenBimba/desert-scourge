##        BDLIB
##    math/trigonometry/sin/init
##
## INPUT - #IN (bdlib.math.sin)
##   1° = 1
## OUTPUT - #OUT (bdlib.math.sin)

execute store result storage bdlib:temp math.sin.index int 1 run scoreboard players operation #IN bdlib.math.sin %= #360 bdlib.const
execute store result score #OUT bdlib.math.sin run function bdlib:math/trigonometry/sin/_macros with storage bdlib:temp math.sin

return run scoreboard players get #OUT bdlib.math.sin