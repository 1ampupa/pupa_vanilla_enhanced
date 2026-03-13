# Pre-recall Phase
execute if score pve.recall pve.features matches 1 at @a[tag=pve.recalling] run playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 1.5 1.1

execute if score pve.recall pve.features matches 1 run schedule function pve:recall/activate 5s

execute if score pve.recall pve.features matches 1 run effect give @a[tag=pve.recalling] minecraft:resistance 6 4 true
execute if score pve.recall pve.features matches 1 run effect give @a[tag=pve.recalling] minecraft:slowness 5 255 true
execute if score pve.recall pve.features matches 1 run effect give @a[tag=pve.recalling] minecraft:blindness 6 255 true
execute if score pve.recall pve.features matches 1 run effect give @a[tag=pve.recalling] minecraft:nausea 6 255 true

execute if score pve.recall pve.features matches 1 run tellraw @a[tag=pve.recalling] [{text:"You are recalling...",color:"aqua",bold:false}]
execute if score pve.recall pve.features matches 1 run title @a[tag=pve.recalling] title {text:"RECALLING",color:"aqua",bold:true}
execute if score pve.recall pve.features matches 1 run title @a[tag=pve.recalling] subtitle {text:"Back to safety in 5 seconds..."}
