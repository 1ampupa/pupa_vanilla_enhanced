execute as @a if score @s pve.recall_cooldown matches 1.. run scoreboard players reset @s recall

execute as @a if score @s pve.recall_cooldown matches 1.. run scoreboard players remove @s pve.recall_cooldown 1

execute as @a if score @s pve.recall_cooldown matches 1.. run title @s actionbar \
[{text:"Recall on cooldown, ",color:"yellow",bold:false},\
{score:{objective:"pve.recall_cooldown",name:"@s"},color:"yellow",bold:true},\
{text:" Ticks remaining",color:"yellow",bold:false}]

execute as @a if score @s pve.recall_cooldown matches 0 run title @s title ""

execute as @a if score @s pve.recall_cooldown matches 0 run title @s subtitle \
{text:"Recall is now READY to use!",color:"green",bold:true}

execute as @a if score @s pve.recall_cooldown matches 0 run tellraw @s \
{text:"You can now activate recall using /trigger recall in the chat.",color:"green",bold:true}

execute as @a if score @s pve.recall_cooldown matches 0 run scoreboard players set @s pve.recall_cooldown -1
execute as @a if score @s pve.recall_cooldown matches ..0 run scoreboard players enable @s recall
