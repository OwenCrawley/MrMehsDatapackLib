execute if function mrlib:collision/in_point run tag @s add mrlib.in_radius
scoreboard players remove $radius mrlib.recursive 1
execute if score $radius mrlib.recursive matches 1.. facing entity @s eyes positioned ^ ^ ^.1 run function mrlib:collision/in_radius/recursive