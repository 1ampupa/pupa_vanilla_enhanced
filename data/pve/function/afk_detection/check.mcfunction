# Check
team empty pve.afk
execute as @a at @s if entity @e[type=marker,tag=pve.afk_marker,distance=..1,limit=1,sort=nearest] run \
 team join pve.afk @s

execute as @a[scores={pve.afk_detection.afk=0}] run function pve:afk_detection/display

execute as @a[scores={pve.afk_detection.afk=0}] at @s if entity @e[type=marker,tag=pve.afk_marker,distance=..1,limit=1,sort=nearest] run \
 scoreboard players set @s pve.afk_detection.afk 1

# Clean up
kill @e[type=marker, tag=pve.afk_marker]
scoreboard players reset @a pve.afk_detection.movement
