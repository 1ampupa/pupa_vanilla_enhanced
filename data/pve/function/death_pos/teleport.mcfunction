summon minecraft:marker 0.0 0.0 0.0 {Tags:[pve.death_pos_tp_point]}

execute as @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] run data modify entity @s Pos[0] set from storage pve:death_pos pos.x
execute as @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] run data modify entity @s Pos[1] set from storage pve:death_pos pos.y
execute as @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] run data modify entity @s Pos[2] set from storage pve:death_pos pos.z

tp @s @e[type=minecraft:marker, tag=pve.death_pos_tp_point, sort=nearest, limit=1]

kill @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1]

tellraw @s [{"text":"[Death Position] ","color":"green","bold":true},{"text":"Teleported to your death position.","color":"green","bold":false}]
