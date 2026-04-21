execute store result storage pve:recall coordinate.x int 1 run data get entity @s Pos[0]
execute store result storage pve:recall coordinate.y int 1 run data get entity @s Pos[1]
execute store result storage pve:recall coordinate.z int 1 run data get entity @s Pos[2]

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"Set recall point to ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"coordinate.x",color:"yellow",bold:true}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.y",color:"yellow",bold:true}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.z",color:"yellow",bold:true}, {"text":" by ",color:"white",bold:false}, \
 {selector:"@s",color:"white",bold:false},{text:".",color:"white",bold:false}]}

function pve:recall/setpoint/global_cooldown
