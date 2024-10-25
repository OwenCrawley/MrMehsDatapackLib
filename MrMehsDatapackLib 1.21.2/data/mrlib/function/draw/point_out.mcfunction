scoreboard players remove $draw.point_out mrlib.recursive 1
execute if score $draw.point_out mrlib.recursive matches 0 run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0 1
execute if score $draw.point_out mrlib.recursive matches 1.. positioned ^ ^ ^.1 run function mrlib:draw/point_out
