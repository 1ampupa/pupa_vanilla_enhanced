function pve:.sys/notification/broadcast {text:{"text":"Uninstalling the datapack.","color":"yellow"}}

scoreboard objectives remove pve.afk_detection.afk
scoreboard objectives remove pve.afk_detection.movement
scoreboard objectives remove pve.clock
scoreboard objectives remove pve.clock.settings
scoreboard objectives remove pve.death_pos
scoreboard objectives remove pve.features
scoreboard objectives remove pve.morning.time_since_rest
scoreboard objectives remove pve.morning.wake_up_effect
scoreboard objectives remove pve.recall.cooldown
scoreboard objectives remove pve.recall.movement_check
scoreboard objectives remove pve.recall.damage_check
scoreboard objectives remove recall

data remove storage pve:death_pos pos
data remove storage pve:recall coordinate

team remove pve.afk

tag @a remove pve.joined_before

function pve:.sys/notification/broadcast {text:{"text":"You can now safely delete the datapack in your world's datapacks folder.","color":"yellow"}}
function pve:.sys/notification/broadcast {text:{"text":"pupa's VanillaEnhanced Datapack has been uninstalled. Thank you for using the datapack!","color":"green"}}
