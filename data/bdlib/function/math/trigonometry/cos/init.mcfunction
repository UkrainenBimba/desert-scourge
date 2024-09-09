##        BDLIB
##    math/trigonometry/cos/init
##
## INPUT - #IN (bdlib.math.cos)
##   1° = 1
## OUTPUT - #OUT (bdlib.math.cos)

execute store result storage bdlib:temp math.cos.index int 1 run scoreboard players operation #IN bdlib.math.cos %= #360 bdlib.const
execute store result score #OUT bdlib.math.cos run function bdlib:math/trigonometry/cos/_macros with storage bdlib:temp math.cos

return run scoreboard players get #OUT bdlib.math.cos