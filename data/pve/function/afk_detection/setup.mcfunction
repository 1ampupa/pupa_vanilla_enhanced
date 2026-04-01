team add pve.afk "AFK"
team modify pve.afk prefix {"text":"[AFK] ","color":"yellow","bold":true}

scoreboard objectives add pve.afk_detection.afk dummy
scoreboard objectives add pve.afk_detection.movement minecraft.custom:minecraft.walk_one_cm
