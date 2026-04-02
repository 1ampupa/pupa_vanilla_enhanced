# Announce new day (delay for 20 for lag buffer)
execute if score daytime pve.clock matches 20 run function pve:.sys/notification/notify_player {text:{"text":"☀ The new day has arrived! ☀","color":"#ffc62b","bold":true}}

# Play sound
execute if score daytime pve.clock matches 20 at @a run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5
