scoreboard players add @s[scores={mrlib.movement.fly_track=5..}] mrlib.movement.fly_time 1
scoreboard players set @s[scores={mrlib.movement.fly_track=1..}] mrlib.movement.fly_uptime 0
scoreboard players reset @s mrlib.movement.fly_track
execute as @s if score @s mrlib.movement.old_fly_time = @s mrlib.movement.fly_time run scoreboard players add @s mrlib.movement.fly_uptime 1
execute as @s run scoreboard players operation @s mrlib.movement.old_fly_time = @s mrlib.movement.fly_time
execute as @s[scores={mrlib.movement.fly_uptime=2..}] run scoreboard players set @s mrlib.movement.fly_time 0