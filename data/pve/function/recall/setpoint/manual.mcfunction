# Set home recall postion
$data modify storage pve:recall Pos set value [$(0),$(1),$(2)]
$data modify storage pve:recall Dimension set value $(Dimension)

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"New recall point at ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[0]",color:"yellow",bold:true}, {"text":" ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[1]",color:"yellow",bold:true}, {"text":" ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Pos[2]",color:"yellow",bold:true}, {"text":" In ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"Dimension",color:"yellow",bold:true},{"text":" by ",color:"white",bold:false}, \
 {selector:"@s",color:"white",bold:false},{text:".",color:"white",bold:false}]}

function pve:recall/setpoint/global_cooldown
