execute store result score $x1 mrlib.motion run data get entity @s Pos[0] 1000
execute store result score $y1 mrlib.motion run data get entity @s Pos[1] 1000
execute store result score $z1 mrlib.motion run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score $x2 mrlib.motion run data get entity @s Pos[0] 1000
execute store result score $y2 mrlib.motion run data get entity @s Pos[1] 1000
execute store result score $z2 mrlib.motion run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-0.1

scoreboard players operation $x2 mrlib.motion -= $x1 mrlib.motion
scoreboard players operation $y2 mrlib.motion -= $y1 mrlib.motion
scoreboard players operation $z2 mrlib.motion -= $z1 mrlib.motion

execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation $x2 mrlib.motion *= $x_strength mrlib.motion
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation $y2 mrlib.motion *= $y_strength mrlib.motion
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation $z2 mrlib.motion *= $z_strength mrlib.motion