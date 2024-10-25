function mrlib:draw/circle
scoreboard players remove $draw.sphere_degree mrlib.recursive 1
execute if score $draw.sphere_degree mrlib.recursive matches 1.. rotated ~ ~16 run function mrlib:draw/sphere_recursive