execute as @a if score @s pve.morning.time_since_rest matches 24000.. run effect give @s minecraft:slowness 1
execute as @a if score @s pve.morning.time_since_rest matches 24000.. run effect give @s minecraft:mining_fatigue 1
execute as @a if score @s pve.morning.time_since_rest matches 24000.. run title @s actionbar {"text":"You're exhausted, you should go to sleep.","color":"gray","bold":true}
