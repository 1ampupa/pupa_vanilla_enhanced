effect give @a[tag=pve.recalling] minecraft:regeneration 3 4
effect give @a[tag=pve.recalling] minecraft:speed 20 1

execute as @a[tag=pve.recalling] at @s run playsound minecraft:item.mace.smash_ground_heavy neutral @a ~ ~ ~ 0.75 0
execute as @a[tag=pve.recalling] at @s run playsound minecraft:item.trident.riptide_1 neutral @a ~ ~ ~ 1 0
execute as @a[tag=pve.recalling] at @s run playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 1 1

execute as @a[tag=pve.recalling] at @s run particle minecraft:firework ~ ~ ~ 1 1 1 0.75 200

execute as @a[tag=pve.recalling] run function pve:.sys/notification/notify_player \
 {text:[{text:"[Recall] ",color:"green",bold:true},{text:"Recall completed! Recall cooldown active for 5 minutes.",color:"green",bold:false}]}
execute as @a[tag=pve.recalling] run title @s title ""
execute as @a[tag=pve.recalling] run title @s subtitle {text:"Back to safety.",bold:true,color:"green"}

scoreboard players set @a[tag=pve.recalling] pve.recall.cooldown 6000
tag @a[tag=pve.recalling] remove pve.recalling