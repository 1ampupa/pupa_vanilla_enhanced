# Announce new day (delay for 20 for lag buffer)
execute if score daytime pve.clock matches 20 run tellraw @a {"text":"☀ The new day has arrived! ☀","color":"#ffc62b","bold":true}

# Play sound
execute if score daytime pve.clock matches 20 at @a run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5

# Random effect for all players who woke up
execute as @a if score @s pve.morning.time_since_rest matches 0..100 if score daytime pve.clock matches 20 run tag @s add pve.woke_up

# Apply effect
execute as @a[tag=pve.woke_up] store result score @s pve.morning.daily_effect run random value 0..3

# 0: No effect
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 0 run \
 tellraw @s {"text":"You woke up, and you're ready for the new day!","color":"green","bold":true}

# 1: Haste
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 1 run \
 effect give @s minecraft:haste 300
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 1 run \
 tellraw @s [{"text":"You woke up, and you're feeling ","color":"green","bold":false},{"text":"productive","color":"green","bold":true}, \
 {"text":" today! You would love to mine and gather resources this morning.","color":"green","bold":false}]

# 2: Regeneration
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 2 run \
 effect give @s minecraft:regeneration 300
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 2 run \
 tellraw @s [{"text":"You woke up, and you're feeling ","color":"green","bold":false},{"text":"refreshed","color":"green","bold":true}, \
 {"text":" today! You're now ready for the new day.","color":"green","bold":false}]

# 3: Luck
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 3 run \
 effect give @s minecraft:luck 300
execute as @a[tag=pve.woke_up] if score @s pve.morning.daily_effect matches 3 run \
 tellraw @s [{"text":"You woke up, and you're feeling ","color":"green","bold":false},{"text":"lucky","color":"green","bold":true}, \
 {"text":" today! Try fishing or looting for some rare goods.","color":"green","bold":false}]


# Reset data
scoreboard players reset @a pve.morning.daily_effect
tag @a[tag=pve.woke_up] remove pve.woke_up
