summon armor_stand ~ ~ ~ {Tags:["mei.itemStateSwitcher"],Invisible:1b,NoGravity:1b,Small:1b}
data modify entity @e[type=armor_stand,tag=mei.itemStateSwitcher,sort=nearest,limit=1] HandItems[0] set from entity @s Inventory[{Slot:-106b}]
execute as @e[type=armor_stand,tag=mei.itemStateSwitcher,sort=nearest,limit=1] run data modify entity @s HandItems[0] merge from storage mrlib:storage item
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=mei.itemStateSwitcher,sort=nearest,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=mei.itemStateSwitcher,sort=nearest,limit=1]
scoreboard players reset $mei.newModelData mei.temp
data remove storage mrlib:storage item