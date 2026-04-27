summon minecraft:marker 0.0 0.0 0.0 {Tags:[pve.death_pos_tp_point]}

$execute in $(dimension) run tp @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] 0 0 0
data modify entity @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] Pos[0] set from entity @s LastDeathLocation.pos[0]
data modify entity @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] Pos[1] set from entity @s LastDeathLocation.pos[1]
data modify entity @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1] Pos[2] set from entity @s LastDeathLocation.pos[2]

tp @s @e[type=minecraft:marker, tag=pve.death_pos_tp_point, sort=nearest, limit=1]

kill @e[type=minecraft:marker, tag=pve.death_pos_tp_point, limit=1]

tellraw @s [{"text":"[Death Position] ","color":"green","bold":true},{"text":"Teleported to your death position.","color":"green","bold":false}]
