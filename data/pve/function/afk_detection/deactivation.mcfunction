execute as @a[scores={pve.afk_detection.afk=1}] if score @s pve.afk_detection.movement matches 0.. run scoreboard players set @s pve.afk_detection.afk 0
