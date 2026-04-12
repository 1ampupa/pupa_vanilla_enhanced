# Setup
scoreboard objectives add recall trigger

scoreboard objectives add pve.recall.cooldown dummy
scoreboard players set @a pve.recall.cooldown 900

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Everyone received 45 seconds of recall cooldown before the first use.",color:"yellow",bold:false}]}
