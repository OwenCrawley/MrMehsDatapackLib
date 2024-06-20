execute if entity @s[gamemode=adventure] run scoreboard players set @s mrlib.gamemode 1
execute if entity @s[gamemode=survival] run scoreboard players set @s mrlib.gamemode 2
execute if entity @s[gamemode=creative] run scoreboard players set @s mrlib.gamemode 3
gamemode spectator @s
tag @s add mrlib.phasing
tp @s ~ ~ ~