tag @s remove mrlib.in_radius
function mrlib:collision/in_radius/recursive

execute as @s[tag=mrlib.in_radius] run return 1
return fail