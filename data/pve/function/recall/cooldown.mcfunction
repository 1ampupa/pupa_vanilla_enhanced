execute as @a if score @s pve.recall_cooldown matches 1.. run scoreboard players reset @s recall

execute as @a if score @s pve.recall_cooldown matches 1.. run scoreboard players remove @s pve.recall_cooldown 1

# Reminder for player

# 3 minutes
execute as @a if score @s pve.recall_cooldown matches 3600 run title @s actionbar \
{text:"Recall will ready in 3 minutes.",color:"yellow",bold:false}

# 1 minutes
execute as @a if score @s pve.recall_cooldown matches 1200 run title @s actionbar \
{text:"Recall will ready in 1 minute.",color:"yellow",bold:false}

# 30 seconds
execute as @a if score @s pve.recall_cooldown matches 600 run title @s actionbar \
{text:"Recall will ready in 30 seconds.",color:"yellow",bold:false}

# 10 seconds and less
execute as @a if score @s pve.recall_cooldown matches 20..200 run title @s actionbar \
{text:"Recall will ready soon!",color:"yellow",bold:false}

execute as @a if score @s pve.recall_cooldown matches 0 run title @s title ""
execute as @a if score @s pve.recall_cooldown matches 0 run title @s subtitle \
{text:"Recall is now READY to use!",color:"green",bold:true}

execute at @a if score @s pve.recall_cooldown matches 0 run playsound block.note_block.pling player @s ~ ~ ~ 0.75 2

execute as @a if score @s pve.recall_cooldown matches 0 run tellraw @s \
{text:"You can now activate recall using /trigger recall in the chat.",color:"green",bold:true}

execute as @a if score @s pve.recall_cooldown matches 0 run scoreboard players set @s pve.recall_cooldown -1
execute as @a if score @s pve.recall_cooldown matches ..0 run scoreboard players enable @s recall
