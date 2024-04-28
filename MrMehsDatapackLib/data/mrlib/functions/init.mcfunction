tellraw @a {"text": "Mr Meh's Datapack Lib Initialized!"}

scoreboard objectives add mrlib.const dummy
scoreboard objectives add mrlib.var dummy

scoreboard objectives add mrlib.gamemode dummy

scoreboard objectives add mrlib.motion dummy

##      --movement--
scoreboard objectives add mrlib.movement.has_motion dummy
#-sprint
scoreboard objectives add mrlib.movement.sprint_track minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add mrlib.movement.sprint_time dummy
scoreboard objectives add mrlib.movement.old_sprint_time dummy
scoreboard objectives add mrlib.movement.sprint_uptime dummy
#-walk
scoreboard objectives add mrlib.movement.walk_track minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add mrlib.movement.walk_time dummy
scoreboard objectives add mrlib.movement.old_walk_time dummy
scoreboard objectives add mrlib.movement.walk_uptime dummy
#-fly
scoreboard objectives add mrlib.movement.fly_track minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add mrlib.movement.fly_time dummy
scoreboard objectives add mrlib.movement.old_fly_time dummy
scoreboard objectives add mrlib.movement.fly_uptime dummy