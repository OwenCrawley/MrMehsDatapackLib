scoreboard players add @s[scores={mrlib.movement.walk_track=5..}] mrlib.movement.walk_time 1
scoreboard players set @s[scores={mrlib.movement.walk_track=1..}] mrlib.movement.walk_uptime 0
scoreboard players reset @s mrlib.movement.walk_track
execute as @s if score @s mrlib.movement.old_walk_time = @s mrlib.movement.walk_time run scoreboard players add @s mrlib.movement.walk_uptime 1
execute as @s run scoreboard players operation @s mrlib.movement.old_walk_time = @s mrlib.movement.walk_time
execute as @s[scores={mrlib.movement.walk_uptime=2..}] run scoreboard players set @s mrlib.movement.walk_time 0