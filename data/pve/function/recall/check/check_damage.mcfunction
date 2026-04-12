execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run function pve:recall/interrupted_penalty
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},{text:"Recall cancelled! You took a damage while recalling. You may recall again in 15 seconds.",color:"red",bold:false}]}
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.25
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run title @s title ""
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run title @s subtitle {text:"Recall cancelled!",color:"red",bold:true}
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run effect clear @s minecraft:darkness
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run effect clear @s minecraft:nausea

execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run tag @s remove pve.recalling
execute as @a[tag=pve.recalling] if score @s pve.recall.damage_check matches 1.. run scoreboard players reset @s pve.recall.damage_check
