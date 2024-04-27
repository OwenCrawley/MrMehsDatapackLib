execute as @a at @s run function mrlib:player/movement/update_times
execute as @a at @s run function mrlib:player/movement/update_has_motion

execute as @a[tag=mrlib.phasing] at @s if block ~ ~ ~ #mrlib:raycast_pass if block ~ ~1.9 ~ #mrlib:raycast_pass run function mrlib:player/movement/phase/end