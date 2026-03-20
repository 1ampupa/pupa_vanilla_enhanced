execute if score pve.morning pve.features matches 1 run function pve:morning/new_day
execute if score pve.morning pve.features matches 1 if score pve.morning.wake_up_effect pve.features matches 1 \
 run function pve:morning/new_day
