# Set tag for Players who just died
execute if score pve.death_pos pve.features matches 1 \
 as @a if score @s pve.death_pos matches 1.. run tag @s add pve.death_pos

# Get death position for all players who have the tag

# X
execute if score pve.death_pos pve.features matches 1 \
 as @a[tag=pve.death_pos] store result storage pve:death_pos pos.x int 1 \
 run data get entity @s Pos[0] 1

# Y
execute if score pve.death_pos pve.features matches 1 \
 as @a[tag=pve.death_pos] store result storage pve:death_pos pos.y int 1 \
 run data get entity @s Pos[1] 1

# Z
execute if score pve.death_pos pve.features matches 1 \
 as @a[tag=pve.death_pos] store result storage pve:death_pos pos.z int 1 \
 run data get entity @s Pos[2] 1

# Tellraw players their death position
execute if score pve.death_pos pve.features matches 1 run execute as @a[tag=pve.death_pos] run function pve:.sys/notification/notify_player \
 {text:[{text:"[Death Position] ",color:"yellow",bold:true},\
 {text:"Your last death position is ",color:"white",bold:false}, \
 {nbt:"pos.x",storage:"pve:death_pos",color:"red",bold:true},{"text":" "}, \
 {nbt:"pos.y",storage:"pve:death_pos",color:"green",bold:true},{"text":" "}, \
 {nbt:"pos.z",storage:"pve:death_pos",color:"blue",bold:true},{"text":" "}, \
 {"text":"[Teleport]",color:"green",bold:true,"hover_event":{action:"show_text",value:"Required operator permission."},\
 click_event:{action:"run_command",command:"function pve:death_pos/teleport"}}]}

# Reset death_pos scoreboard for all players who have the tag
execute as @a[tag=pve.death_pos] run scoreboard players reset @s pve.death_pos
tag @a[tag=pve.death_pos] remove pve.death_pos
