execute as @a[tag=!pve.joined_before] run scoreboard players set @s pve.recall_cooldown 900
tag @a[tag=!pve.joined_before] add pve.joined_before
