execute as @a[scores={pve.recall.cooldown=-1..1200}] run function pve:.sys/notification/warn_player {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"Your recall cooldown has reset to 1 minute for the new recall point.",color:"white",bold:false}]}
scoreboard players set @a[scores={pve.recall.cooldown=-1..1200}] pve.recall.cooldown 1200
