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
scoreboard players get @s mrlib.movement.sprint_time
```
* There is a sprint_time, walk_time, and fly_time
* They all work just like the sneak_time built in score except they reset when you stop moving.
* There is an additional has_motion score which just tracks if you are moving at all and how long, it also resets upon idle