# Set tag for Players who just died
execute as @a if score @s pve.death_pos matches 1.. run tag @s add pve.death_pos

# Get death position for all players who have the tag

# X
execute as @a[tag=pve.death_pos] store result storage pve:death_pos Position.x int 1 \
 run data get entity @s Pos[0] 1

# Y
execute as @a[tag=pve.death_pos] store result storage pve:death_pos Position.y int 1 \
 run data get entity @s Pos[1] 1

# Z
execute as @a[tag=pve.death_pos] store result storage pve:death_pos Position.z int 1 \
 run data get entity @s Pos[2] 1

# Tellraw players their death position
tellraw @a[tag=pve.death_pos] [{text:"[Death Position] ",color:"yellow",bold:true},\
 {text:"Your last death position is ",color:"white",bold:false}, \
 {nbt:"Position.x",storage:"pve:death_pos",color:"red",bold:true},{"text":" "}, \
 {nbt:"Position.y",storage:"pve:death_pos",color:"green",bold:true},{"text":" "}, \
 {nbt:"Position.z",storage:"pve:death_pos",color:"blue",bold:true}]

# Reset death_pos scoreboard for all players who have the tag
execute as @a[tag=pve.death_pos] run scoreboard players reset @s pve.death_pos
tag @a[tag=pve.death_pos] remove pve.death_pos
