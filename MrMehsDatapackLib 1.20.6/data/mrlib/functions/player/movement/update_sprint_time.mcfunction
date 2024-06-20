scoreboard players add @s[scores={mrlib.movement.sprint_track=5..}] mrlib.movement.sprint_time 1
scoreboard players set @s[scores={mrlib.movement.sprint_track=1..}] mrlib.movement.sprint_uptime 0
scoreboard players reset @s mrlib.movement.sprint_track
execute as @s if score @s mrlib.movement.old_sprint_time = @s mrlib.movement.sprint_time run scoreboard players add @s mrlib.movement.sprint_uptime 1
execute as @s run scoreboard players operation @s mrlib.movement.old_sprint_time = @s mrlib.movement.sprint_time
execute as @s[scores={mrlib.movement.sprint_uptime=2..}] run scoreboard players set @s mrlib.movement.sprint_time 0