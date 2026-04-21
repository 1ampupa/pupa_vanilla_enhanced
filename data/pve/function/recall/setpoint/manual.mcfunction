# Set home recall postion
$data modify storage pve:recall coordinate set value {x:$(x), y:$(y), z:$(z)}

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"Set recall point to ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"coordinate.x",color:"yellow",bold:true}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.y",color:"yellow",bold:true}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.z",color:"yellow",bold:true}, {"text":" by ",color:"white",bold:false}, \
 {selector:"@s",color:"white",bold:false},{text:".",color:"white",bold:false}]}

function pve:recall/setpoint/global_cooldown
