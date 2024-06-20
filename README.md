# Mr. Meh's Datapack Library
Mr Meh's Datapack Library is a library made to assist with Datapack creation

## Features:
### Swapping Item with Offhand Function
```mcfunction
function mrlib:player/inventory/swap_hands
```
* This essentially emulates the "Swap Item with Offhand" keybind but is not dependent on what your keybind is set to

### Modifying a Held Item without giving the player a new item
```mcfunction
data merge storage mrlib:storage {item:{components:{"minecraft:custom_name":'{"text":"New Item Name"}'}}}
function mrlib:player/inventory/modify_mainhand
```
* There is a function for modifying offhand
* Put all data for mainhand modifications or offhand modifications in storage, mrlib:storage
* Doesn't directly modify item, instead gives player new item with modified nbt

### Movement Tracking Scores
```mcfunction
execute as @a run function mrlib:player/movement/update_times
scoreboard players get @s mrlib.movement.walk_time
scoreboard players get @s mrlib.movement.sprint_time
scoreboard players get @s mrlib.movement.fly_time
```
* These scores all work just like the sneak_time built in score except they reset when you stop moving.
* There is an additional has_motion score which just tracks if you are moving at all and how long, it also resets upon idle
* In order to use the has_motion score you must also run the `function mrlib:player/movement/update_has_motion` function

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
### Macro Damage (damage from nbt)
```mcfunction
function mrlib:entity/damage {"damage":DAMAGE_AMOUNT,damageType:"DAMAGE_TYPE"}
```
or for scoreboard/data usage:
```mcfunction
scoreboard players set $mrlib.damage mrlib.var 100
execute store result storage mrlib:storage damage.damage int 0.1 run scoreboard players get $mrlib.damage mrlib.var
data merge storage mrlib:storage {damage:{damageType:"generic"}}
function mrlib:entity/damage with storage mrlib:storage damage
```
* You can use any score and any storage
* If you choose to use your own storage it must be structured as such:
```
{PATH:{damage:DAMAGE_AMOUNT,damageType:"DAMAGE_TYPE"}}
```

### Non Solid Block Tag and Function
```mcfunction
execute if block ~ ~ ~ #mrlib:non_solid
```
```mcfunction
execute if function mrlib:player/in_non_solid
```
* The block tag includes all blocks that the player can walk through
* The function checks if there are any solids in the players hitbox if there is it returns a fail
# NOTES
Remember that this is a work in progress so their may be bugs!
It is also being worked on by a programming amateur so it may not be written in the most optimized and efficient way.
