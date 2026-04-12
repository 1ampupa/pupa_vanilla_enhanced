# Activation
scoreboard players enable @a recall
execute as @a if score @s recall matches 1.. run tag @s add pve.recalling

# Call function
execute as @a if score @s recall matches 1.. run function pve:recall/trigger

# Clean-up
execute as @a if score @s recall matches 1.. run scoreboard players reset @s recall
