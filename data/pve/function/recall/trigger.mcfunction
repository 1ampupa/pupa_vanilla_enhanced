execute as @a if score @s recall matches 1.. run tag @s add pve.recalling
execute as @a if score @s recall matches 1.. run function pve:recall
execute as @a if score @s recall matches 1.. run scoreboard players reset @s recall
