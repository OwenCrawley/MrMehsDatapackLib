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
