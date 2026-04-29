# Setup
scoreboard objectives add recall trigger

scoreboard objectives add pve.recall.cooldown dummy
scoreboard objectives add pve.recall.movement_check minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add pve.recall.damage_check minecraft.custom:minecraft.damage_taken

scoreboard objectives add pve.recall.setter_casting_time dummy

scoreboard players set @a pve.recall.cooldown 900
scoreboard players set @a pve.recall.movement_check 0
scoreboard players set @a pve.recall.damage_check 0

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Everyone received 45 seconds of recall cooldown before the first use.",color:"yellow",bold:false}]}
