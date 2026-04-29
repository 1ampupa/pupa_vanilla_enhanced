# Check Process
function pve:recall/check/check_cooldown
function pve:recall/check/check_dimension with storage pve:recall
function pve:recall/check/check_distance with storage pve:recall
schedule function pve:recall/teleport_task 5s

# Casting Process
execute at @a[tag=pve.recalling] run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1.5 1.1
execute at @a[tag=pve.recalling] run playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 0.25 1

execute as @a[tag=pve.recalling] run effect give @s minecraft:darkness 6 255 true
execute as @a[tag=pve.recalling] run effect give @s minecraft:nausea 6 255 true

execute as @a[tag=pve.recalling] run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"aqua",bold:true},{text:"You are recalling...",color:"aqua",bold:false}]}
execute as @a[tag=pve.recalling] run title @s title {text:"RECALLING",color:"aqua",bold:true}
execute as @a[tag=pve.recalling] run title @s subtitle {text:"Back to safety in 5 seconds..."}
