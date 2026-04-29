$execute as @a[tag=pve.recalling] unless entity @s[nbt={Dimension:"$(Dimension)"}] run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},\
 {text:"Recall doesn't support cross-dimension teleporting. Please try again in ",color:"red",bold:false}, \
 {storage:"pve:recall","nbt":"Dimension",color:"yellow",bold:true},{text:".",color:"white",bold:false}]}

$execute as @a[tag=pve.recalling] unless entity @s[nbt={Dimension:"$(Dimension)"}] run tag @s remove pve.recalling
