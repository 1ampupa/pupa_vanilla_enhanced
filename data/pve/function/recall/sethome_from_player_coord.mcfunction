execute store result storage pve:recall coordinate.x int 1 run data get entity @s Pos[0]
execute store result storage pve:recall coordinate.y int 1 run data get entity @s Pos[1]
execute store result storage pve:recall coordinate.z int 1 run data get entity @s Pos[2]

function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true}, \
 {text:"Set recall home coordinate to the setter current coordinate: ",color:"white",bold:false}, \
 {storage:"pve:recall","nbt":"coordinate.x"}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.y"}, {"text":" "}, \
 {storage:"pve:recall","nbt":"coordinate.z"}, {"text":""}]}
