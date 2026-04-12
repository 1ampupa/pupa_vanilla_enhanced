# Set home recall postion
$data modify storage pve:recall coordinate set value {x:$(x), y:$(y), z:$(z)}

$function pve:.sys/notification/broadcast {text:[{text:"[Recall] ",color:"yellow",bold:true},\
{text:"Set recall point to $(x) $(y) $(z)",color:"white",bold:false}]}
