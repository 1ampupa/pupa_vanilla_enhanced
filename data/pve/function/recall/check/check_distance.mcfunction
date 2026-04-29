$execute in $(Dimension) run summon minecraft:marker 0 0 0 {Tags:[pve.recall_point]}

$execute in $(Dimension) run data modify entity @e[type=minecraft:marker,tag=pve.recall_point,limit=1] Pos set from storage pve:recall Pos

$execute at @a[tag=pve.recalling] in $(Dimension) if entity @e[type=marker,distance=300..] run function pve:recall/interrupted_penalty
$execute at @a[tag=pve.recalling] in $(Dimension) if entity @e[type=marker,distance=300..] run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},{text:"Recall failed! You're too far from the recall point. You may recall again in 15 seconds.",color:"red",bold:false}]}
$execute at @a[tag=pve.recalling] in $(Dimension) if entity @e[type=marker,distance=300..] run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.25

$execute at @a[tag=pve.recalling] in $(Dimension) if entity @e[type=marker,distance=300..] run tag @s remove pve.recalling
