# A successful recall
execute as @a[tag=pve.recalling] run teleport @s @e[type=marker,tag=pve.recall_point,limit=1]
execute as @a[tag=pve.recalling] run function pve:recall/success_recall

# Clean-up
kill @e[type=marker,tag=pve.recall_point]
