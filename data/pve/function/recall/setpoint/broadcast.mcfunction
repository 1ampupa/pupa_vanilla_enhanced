# Clean Pos data
execute store result storage pve:recall Pos[0] int 1 run data get storage pve:recall Pos[0]
execute store result storage pve:recall Pos[1] int 1 run data get storage pve:recall Pos[1]
execute store result storage pve:recall Pos[2] int 1 run data get storage pve:recall Pos[2]

# Broadcast
$execute as $(selector) run function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"New recall point at ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[0]",color:"yellow",bold:true}, {"text":" ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[1]",color:"yellow",bold:true}, {"text":" ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[2]",color:"yellow",bold:true}, {"text":" In ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Dimension",color:"yellow",bold:true},{"text":" by ",color:"white",bold:false}, \
 {selector:"@s",color:"white",bold:false},{text:".",color:"white",bold:false}]}

# Apply Global Cooldown
function pve:recall/setpoint/global_cooldown
