# Check
team empty pve.afk
execute as @a at @s if entity @e[type=marker,tag=pve.afk_marker,distance=..1,limit=1,sort=nearest] run team join pve.afk @s

# Clean up
kill @e[type=marker, tag=pve.afk_marker]
