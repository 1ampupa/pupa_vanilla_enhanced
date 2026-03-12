# Get day
execute store result score day pve.clock run time query day

# Get daytime for hour
execute store result score daytime pve.clock run time query daytime

# HOUR

# Get Hour (daytime / 1000 + 6 <- Offset; Hour max at 24)
execute store result score hour pve.clock run \
 scoreboard players operation daytime pve.clock /= hour_divisor pve.clock.settings

# Set Hour Offset (6:00 starts at tick 0)
scoreboard players operation hour pve.clock += hour_offset pve.clock.settings

# Fix Hour error if hour past midnight / 24 (Reset to 0)
execute if score hour pve.clock matches 24.. run \ 
 scoreboard players operation hour pve.clock -= hour_past_midnight_offset pve.clock.settings

# MINUTE

# Get daytime for minute
execute store result score daytime pve.clock run time query daytime

# Get Minute by get the remainder of hour (daytime % 1000)
execute store result score minute pve.clock run \
 scoreboard players operation daytime pve.clock %= hour_divisor pve.clock.settings

# Convert minute to hour to remove decimal (Remainder of hour * 60)
scoreboard players operation minute pve.clock *= minute_divisor pve.clock.settings

# Get Minute from hour (MinuteInHour / 1000)
scoreboard players operation minute pve.clock /= hour_divisor pve.clock.settings

# Get daytime for query
execute store result score daytime pve.clock run time query daytime

# DISPLAY DAY ... HH:MM

# Give tag 'pve.clock' to players who holding a clock
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:clock"}}] run tag @s add pve.clock

# HH:MM if Hour < 10 and Minute < 10    e.g. 0:5 -> 00:05
execute if score hour pve.clock matches 0..9 run \ 
 execute if score minute pve.clock matches 0..9 run \
 title @a[tag=pve.clock] actionbar [{text:"DAY ", color:"yellow", bold:false},\ 
 {score:{objective:"pve.clock", name:"day"}, color:"yellow", bold:true}, \ 
 {text:" 0", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"hour"}, color:"white", bold:true}, \ 
 {text:":0", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"minute"}, color:"white", bold:true}]

# H:MM if Hour >= 10 and Minute < 10    e.g. 10:0 -> 10:00
execute if score hour pve.clock matches 10..23 run \ 
 execute if score minute pve.clock matches 0..9 run \
 title @a[tag=pve.clock] actionbar [{text:"DAY ", color:"yellow", bold:false},\ 
 {score:{objective:"pve.clock", name:"day"}, color:"yellow", bold:true}, \ 
 {text:" ", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"hour"}, color:"white", bold:true}, \ 
 {text:":0", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"minute"}, color:"white", bold:true}]

# HH:M if Hour < 10 and Minute >= 10    e.g. 6:30 -> 06:30
execute if score hour pve.clock matches 0..9 run \ 
 execute if score minute pve.clock matches 10..59 run \
 title @a[tag=pve.clock] actionbar [{text:"DAY ", color:"yellow", bold:false},\ 
 {score:{objective:"pve.clock", name:"day"}, color:"yellow", bold:true}, \ 
 {text:" 0", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"hour"}, color:"white", bold:true}, \ 
 {text:":", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"minute"}, color:"white", bold:true}]

# H:M if Hour >= 10 and Minute >= 10    e.g. 15:45 -> 15:45
execute if score hour pve.clock matches 10..23 run \ 
 execute if score minute pve.clock matches 10..59 run \
 title @a[tag=pve.clock] actionbar [{text:"DAY ", color:"yellow", bold:false},\ 
 {score:{objective:"pve.clock", name:"day"}, color:"yellow", bold:true}, \ 
 {text:" ", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"hour"}, color:"white", bold:true}, \ 
 {text:":", color:"white", bold:true}, \
 {score:{objective:"pve.clock", name:"minute"}, color:"white", bold:true}]

# Remove the 'pve.clock' tag from players
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:clock"}}] run tag @s[tag=pve.clock] remove pve.clock
