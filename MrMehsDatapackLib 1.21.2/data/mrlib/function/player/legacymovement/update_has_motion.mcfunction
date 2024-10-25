tag @s remove mrlib.phase_ready
execute as @s[tag=mrlib.phase,tag=mrlib.has_motion] run tag @s add mrlib.phase_ready

tag @s remove mrlib.has_motion
execute store result score $motiontemp mrlib.var run data get entity @s Motion[0] 1000
execute unless score $motiontemp mrlib.var matches 0 run tag @s add mrlib.has_motion
execute store result score $motiontemp mrlib.var run data get entity @s Motion[2] 1000
execute unless score $motiontemp mrlib.var matches 0 run tag @s add mrlib.has_motion

execute store result score $motiontemp mrlib.var run data get entity @s Motion[1] 1000
execute unless score $motiontemp mrlib.var matches -79 unless score $motiontemp mrlib.var matches 0 run tag @s add mrlib.has_motion

execute unless score @s mrlib.movement.walk_time matches 0 run tag @s add mrlib.has_motion
execute unless score @s mrlib.movement.sprint_time matches 0 run tag @s add mrlib.has_motion
execute unless score @s mrlib.movement.fly_time matches 0 run tag @s add mrlib.has_motion

scoreboard players reset $motiontemp mrlib.var

execute as @s[tag=!mrlib.has_motion,tag=mrlib.phase_ready] at @s positioned ^ ^.1 ^.1 unless function mrlib:player/in_non_solid run function mrlib:player/legacymovement/phase/start
execute as @s[tag=mrlib.phasing] at @s if function mrlib:player/in_non_solid run function mrlib:player/legacymovement/phase/end

scoreboard players reset @s[tag=!mrlib.has_motion] mrlib.movement.has_motion
scoreboard players add @s[tag=mrlib.has_motion] mrlib.movement.has_motion 1