# Check features
execute if score pve.recall pve.features matches 0 as @a[tag=pve.recalling] run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},{text:"Recall is not enabled in this world.",color:"red",bold:false}]}

execute if score pve.recall pve.features matches 0 as @a[tag=pve.recalling] run tag @s remove pve.recalling

# Check recall point
execute unless data storage pve:recall coordinate as @a[tag=pve.recalling] run function pve:.sys/notification/warn_player \
 {text:[{text:"[Recall] ",color:"red",bold:true},{text:"There's no available recall point. To set one ",color:"red",bold:false}, \
 {text:"CLICK HERE",color:"yellow",bold:true,underlined:true,click_event:{action:"show_dialog",dialog:"pve:datapack_settings/recall/setpoint"},\
 hover_event:{action:"show_text",value:"Required an operator permission."}}]}

execute unless data storage pve:recall coordinate as @a[tag=pve.recalling] run tag @s remove pve.recalling

# Casting if all condition are passed
execute if score pve.recall pve.features matches 1 if data storage pve:recall coordinate run function pve:recall/casting
