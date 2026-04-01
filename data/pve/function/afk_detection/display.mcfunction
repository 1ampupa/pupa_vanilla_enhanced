# Display afk message
tellraw @a[team=pve.afk] [{"text":"[AFK Detection] ","color":"yellow","bold":true},{"text":"You are currently inactive. Move around to come back online!","color":"white","bold":false}]
execute at @a[team=pve.afk] run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.5
