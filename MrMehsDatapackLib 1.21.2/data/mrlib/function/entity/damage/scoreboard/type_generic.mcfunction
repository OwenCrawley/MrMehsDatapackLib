execute store result score $damage*10 mrlib.var run data get storage mrlib:storage damage.damage 10

execute if score $damage*10 mrlib.var matches 1280.. run damage @s 128 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 1280.. run scoreboard players remove $damage*10 mrlib.var 1280
execute if score $damage*10 mrlib.var matches 640.. run damage @s 64 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 640.. run scoreboard players remove $damage*10 mrlib.var 640
execute if score $damage*10 mrlib.var matches 320.. run damage @s 32 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 320.. run scoreboard players remove $damage*10 mrlib.var 320
execute if score $damage*10 mrlib.var matches 160.. run damage @s 16 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 160.. run scoreboard players remove $damage*10 mrlib.var 160
execute if score $damage*10 mrlib.var matches 80.. run damage @s 8 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 80.. run scoreboard players remove $damage*10 mrlib.var 80
execute if score $damage*10 mrlib.var matches 40.. run damage @s 4 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 40.. run scoreboard players remove $damage*10 mrlib.var 40
execute if score $damage*10 mrlib.var matches 20.. run damage @s 2 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 20.. run scoreboard players remove $damage*10 mrlib.var 20
execute if score $damage*10 mrlib.var matches 10.. run damage @s 1 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 10.. run scoreboard players remove $damage*10 mrlib.var 10
execute if score $damage*10 mrlib.var matches 5.. run damage @s 0.5 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 5.. run scoreboard players remove $damage*10 mrlib.var 5
execute if score $damage*10 mrlib.var matches 2.. run damage @s 0.2 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 2.. run scoreboard players remove $damage*10 mrlib.var 2
execute if score $damage*10 mrlib.var matches 1.. run damage @s 0.1 generic by @n[tag=mrlib.damage.by] from @n[tag=mrlib.damage.from]
execute if score $damage*10 mrlib.var matches 1.. run scoreboard players remove $damage*10 mrlib.var 1