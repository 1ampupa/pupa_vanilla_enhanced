# Display afk message
execute as @a[team=pve.afk] run function pve:.sys/notification/notify_player \
{text:[{"text":"[AFK Detection] ","color":"yellow","bold":true},{"text":"You are currently inactive. Move around to come back online!","color":"white","bold":false}]}
