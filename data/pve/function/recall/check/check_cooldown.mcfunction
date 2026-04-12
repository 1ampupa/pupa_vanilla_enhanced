execute as @a[tag=pve.recalling] if score @s pve.recall.cooldown matches 1.. run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true}, \
 {text:"Recall failed! Recall is in cooldown. You may recall again in ",color:"red",bold:false}, \
 {"score":{name:"@s",objective:"pve.recall.cooldown"},color:"red",bold:true}, \
 {text:" ticks. ",color:"red",bold:false}]}

execute at @a[tag=pve.recalling] if score @s pve.recall.cooldown matches 1.. run tag @s remove pve.recalling
