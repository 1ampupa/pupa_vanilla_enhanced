# Set home recall postion
$data modify storage pve:recall coordinate set value {x:$(x), y:$(y), z:$(z)}

$tellraw @a [{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Set recall home coordinate to $(x) $(y) $(z)",color:"white",bold:false}]
