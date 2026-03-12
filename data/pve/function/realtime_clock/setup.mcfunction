# Create new scoreboard
scoreboard objectives add pve.clock dummy
scoreboard objectives add pve.clock.settings dummy

# Assign new values
scoreboard players set day pve.clock 0
scoreboard players set daytime pve.clock 0
scoreboard players set hour pve.clock 0
scoreboard players set minute pve.clock 0

scoreboard players set hour_divisor pve.clock.settings 1000
scoreboard players set hour_past_midnight_offset pve.clock.settings 24
scoreboard players set minute_divisor pve.clock.settings 60
scoreboard players set hour_offset pve.clock.settings 6
