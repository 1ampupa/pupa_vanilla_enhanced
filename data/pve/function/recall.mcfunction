# Pre-recall Phase
execute at @a[tag=pve.recalling] run playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 1.5 1.1

schedule function pve:recall/activate 5s

effect give @a[tag=pve.recalling] minecraft:resistance 6 4 true
effect give @a[tag=pve.recalling] minecraft:slowness 5 255 true
effect give @a[tag=pve.recalling] minecraft:blindness 6 255 true
effect give @a[tag=pve.recalling] minecraft:nausea 6 255 true

tellraw @a[tag=pve.recalling] [{text:"You are recalling...",color:"aqua",bold:false}]
title @a[tag=pve.recalling] title {text:"RECALLING",color:"aqua",bold:true}
title @a[tag=pve.recalling] subtitle {text:"Back to safety in 5 seconds..."}
