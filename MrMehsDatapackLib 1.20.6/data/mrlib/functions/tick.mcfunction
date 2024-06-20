execute as @a run function mrlib:player/movement/update_times
execute as @a run function mrlib:player/movement/update_has_motion

execute as @a[tag=mrlib.phasing] at @s if function mrlib:player/in_non_solid run function mrlib:player/movement/phase/end