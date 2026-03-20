tellraw @a {"text":"Uninstalling the datapack.","color":"yellow"}

scoreboard objectives remove pve.clock
scoreboard objectives remove pve.clock.settings
scoreboard objectives remove pve.death_pos
scoreboard objectives remove pve.features
scoreboard objectives remove pve.morning.time_since_rest
scoreboard objectives remove pve.morning.wake_up_effect
scoreboard objectives remove pve.recall_cooldown
scoreboard objectives remove recall

data modify storage pve:death_pos pos set value {}
data modify storage pve:recall coordinate set value {}

tellraw @a {"text":"You can now safely delete the datapack in your world's datapacks folder.","color":"yellow"}
tellraw @a {"text":"pupa's VanillaEnhanced Datapack has been uninstalled. Thank you for using the datapack!","color":"green"}
