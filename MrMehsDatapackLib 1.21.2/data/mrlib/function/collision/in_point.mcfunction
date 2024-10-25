tag @s remove mrlib.in_point
execute positioned ~-0.01 ~-0.01 ~-0.01 as @s[dx=0] positioned ~-0.98 ~-0.98 ~-0.98 as @s[dx=0] run tag @s add mrlib.in_point
execute as @s[tag=mrlib.in_point] run return 1
return fail