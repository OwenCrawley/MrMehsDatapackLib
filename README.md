# Mr Meh's Datapack Library
Mr Meh's Datapack Library is a library made to assist with Datapack creation

## Some features:
### Swapping Item with Offhand Function
```mcfunction
function mrlib:player/inventory/swap_hands
```

### Modifying a Held Item without giving the player a new item
```mcfunction
data merge storage mrlib:storage  {item:{tag:{display:{Name:'{"text":"New Item Name"}'}}}}
function mrlib:player/inventory/modify_mainhand
```
* There is a function for modifying offhand
* Put all data for mainhand modifications or offhand modifications in storage, mrlib:storage
* Doesn't directly modify item, instead gives player new item with modified nbt

### Movement Tracking Scores
```mcfunction
scoreboard players get @s mrlib.movement.walk_time
scoreboard players get @s mrlib.movement.sprint_time
scoreboard players get @s mrlib.movement.fly_time
```
* These scores all work just like the sneak_time built in score except they reset when you stop moving.
* There is an additional has_motion score which just tracks if you are moving at all and how long, it also resets upon idle

### Entity Motion
```mcfunction
scoreboard players set $strength mrlib.motion 1000
function mrlib:entity/launch/looking
```
or if you want to control individual xyz motion:
```mcfunction
scoreboard players set $x_strength mrlib.motion 1000
scoreboard players set $y_strength mrlib.motion 1000
scoreboard players set $z_strength mrlib.motion 1000
function mrlib:entity/launch/xyz
```
* strength of 1000 launches the entity roughly ~3 blocks or so
* Does not work on players
### Macro Damage (damage from scoreboard)
```mcfunction
function mrlib:entity/damage {"damage":10,"damageType":"generic"}
```
or for scoreboard/data usage:
```mcfunction
scoreboard players set $mrlib.damage mrlib.var 100
execute store result storage mrlib:storage damage.damage int 0.1 run scoreboard players get $mrlib.damage mrlib.var
data merge storage mrlib:storage {damage:{damageType:"generic"}}
function mrlib:entity/damage with storage mrlib:storage damage
```
* You can use any score and any storage
* If you choose to use your own storage it must be structured as such `{PATH:{damage:20,damageType:"generic"}}`

# NOTES
Remember that this is a work in progress so their may be bugs!
It is also being worked on by a programming amateur so it may not be written in the most optimized and efficient way.
