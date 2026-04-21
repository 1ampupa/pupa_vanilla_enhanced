execute as @a if score @s pve.recall.cooldown matches 1.. run scoreboard players remove @s pve.recall.cooldown 1

# Reminder for player

# 3 minutes
execute as @a if score @s pve.recall.cooldown matches 3600 run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"yellow",bold:true},{text:"Recall will ready in 3 minutes.",color:"yellow",bold:false}]}

# 1 minutes
execute as @a if score @s pve.recall.cooldown matches 1200 run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"yellow",bold:true},{text:"Recall will ready in 1 minute.",color:"yellow",bold:false}]}

# 30 seconds
execute as @a if score @s pve.recall.cooldown matches 600 run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"yellow",bold:true},{text:"Recall will ready in 30 seconds.",color:"yellow",bold:false}]}

# 15 seconds and less
execute as @a if score @s pve.recall.cooldown matches 0..300 run title @s actionbar \
[{text:"Recall will ready in ",color:"yellow",bold:false},{score:{name:"@s",objective:"pve.recall.cooldown"}, \
 color:"yellow",bold:true},{text:" ticks!",color:"yellow",bold:false}]

execute as @a if score @s pve.recall.cooldown matches 0 run title @s actionbar \
{text:"Recall is now READY to use!",color:"green",bold:true}

execute at @a if score @s pve.recall.cooldown matches 0 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5

execute as @a if score @s pve.recall.cooldown matches 0 run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"green",bold:true},{text:"You can now activate recall using /trigger recall in the chat.",color:"green",bold:false}]}

execute as @a if score @s pve.recall.cooldown matches 0 run scoreboard players set @s pve.recall.cooldown -1
