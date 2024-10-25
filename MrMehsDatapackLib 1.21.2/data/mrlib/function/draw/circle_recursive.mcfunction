scoreboard players operation $draw.point_out mrlib.recursive = $draw.radius mrlib.recursive
function mrlib:draw/point_out
scoreboard players remove $draw.degree mrlib.recursive 1
execute if score $draw.degree mrlib.recursive matches 1.. rotated ~32 ~ run function mrlib:draw/circle_recursive