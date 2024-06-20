summon armor_stand ~ ~ ~ {Tags:["mrlib.OffhandSwitch"],Invisible:1b,NoGravity:1b,Small:1b}
data modify entity @e[tag=mrlib.OffhandSwitch,sort=nearest,limit=1] HandItems[0] set from entity @s SelectedItem
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[tag=mrlib.OffhandSwitch,sort=nearest,limit=1] weapon.mainhand
kill @e[tag=mrlib.OffhandSwitch,sort=nearest,limit=1]