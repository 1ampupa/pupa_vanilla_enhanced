# Set home recall postion
$data modify storage pve:recall position set value {x:$(x), y:$(y), z:$(z)}

$tellraw @a [{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Set recall home position to $(x) $(y) $(z).",color:"white",bold:false}]
