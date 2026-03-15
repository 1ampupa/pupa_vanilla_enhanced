# Setup
scoreboard objectives add recall trigger

scoreboard objectives add pve.recall_cooldown dummy
scoreboard players set @a pve.recall_cooldown 900

tellraw @a [{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Everyone received 45 seconds of recall cooldown before the first use.",color:"yellow",bold:false}]
