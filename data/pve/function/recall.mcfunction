# Activation
scoreboard players enable @a recall
execute as @a if score @s recall matches 1.. run tag @s add pve.recalling

# Call function
execute as @a if score @s recall matches 1.. run function pve:recall/trigger

# Clean-up
execute as @a if score @s recall matches 1.. run scoreboard players reset @s recall
scoreboard players reset @a[tag=!pve.recalling] pve.recall.movement_check
scoreboard players reset @a[tag=!pve.recalling] pve.recall.damage_check 
