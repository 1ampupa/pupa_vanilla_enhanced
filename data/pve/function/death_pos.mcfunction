# Set tag for Players who just died
execute if score pve.death_pos pve.features matches 1 \
 as @a if score @s pve.death_pos matches 1.. run tag @s add pve.death_pos

# Tellraw players their death position
execute if score pve.death_pos pve.features matches 1 run execute as @a[tag=pve.death_pos] run function pve:.sys/notification/notify_player \
 {text:[{text:"[Death Position] ",color:"yellow",bold:true},\
 {text:"Your last death position is ",color:"white",bold:false}, \
 {nbt:"LastDeathLocation.pos[0]",entity:"@s",color:"red",bold:true},{text:" ",color:"white",bold:true}, \
 {nbt:"LastDeathLocation.pos[1]",entity:"@s",color:"green",bold:true},{text:" ",color:"white",bold:true}, \
 {nbt:"LastDeathLocation.pos[2]",entity:"@s",color:"blue",bold:true},{text:" In ",color:"white",bold:true}, \
 {nbt:"LastDeathLocation.dimension",entity:"@s",color:"white",bold:true},{text:" ",color:"white",bold:true}, \
 {text:"[Teleport]",color:"green",bold:true,hover_event:{action:"show_text",value:"Required operator permission."},\
 click_event:{action:"run_command",command:"function pve:death_pos/teleport with entity @s LastDeathLocation"}}]}

# Reset death_pos scoreboard for all players who have the tag
execute as @a[tag=pve.death_pos] run scoreboard players reset @s pve.death_pos
tag @a[tag=pve.death_pos] remove pve.death_pos
