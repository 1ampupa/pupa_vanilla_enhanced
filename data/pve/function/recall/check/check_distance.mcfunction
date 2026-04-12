summon minecraft:marker ~ ~ ~ {Tags:[pve.recall_point]}

data modify entity @e[type=minecraft:marker,tag=pve.recall_point,limit=1] Pos[0] set from storage pve:recall coordinate.x
data modify entity @e[type=minecraft:marker,tag=pve.recall_point,limit=1] Pos[1] set from storage pve:recall coordinate.y
data modify entity @e[type=minecraft:marker,tag=pve.recall_point,limit=1] Pos[2] set from storage pve:recall coordinate.z

execute at @a[tag=pve.recalling] if entity @e[type=marker,distance=300..] run function pve:recall/interrupted_penalty
execute at @a[tag=pve.recalling] if entity @e[type=marker,distance=300..] run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},{text:"Recall failed! You're too far from the recall point. You may recall again in 15 seconds.",color:"red",bold:false}]}
execute at @a[tag=pve.recalling] if entity @e[type=marker,distance=300..] run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.25

execute at @a[tag=pve.recalling] if entity @e[type=marker,distance=300..] run tag @s remove pve.recalling
