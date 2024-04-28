execute store result score $motion_x1 mrlib.var run data get entity @s Pos[0] 1000
execute store result score $motion_y1 mrlib.var run data get entity @s Pos[1] 1000
execute store result score $motion_z1 mrlib.var run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score $motion_x2 mrlib.var run data get entity @s Pos[0] 1000
execute store result score $motion_y2 mrlib.var run data get entity @s Pos[1] 1000
execute store result score $motion_z2 mrlib.var run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-0.1

scoreboard players operation $motion_x2 mrlib.var -= $motion_x1 mrlib.var
scoreboard players operation $motion_y2 mrlib.var -= $motion_y1 mrlib.var
scoreboard players operation $motion_z2 mrlib.var -= $motion_z1 mrlib.var

execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation $motion_x2 mrlib.var *= $x_strength mrlib.motion
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation $motion_y2 mrlib.var *= $y_strength mrlib.motion
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation $motion_z2 mrlib.var *= $z_strength mrlib.motion