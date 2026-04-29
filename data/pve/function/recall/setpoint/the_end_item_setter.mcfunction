# Check for item in the_end
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{"pve.recall_point_setter":{"Dimension":"minecraft:the_end"}}}},OnGround:1b}] \
 at @s if dimension minecraft:the_end run tag @s add pve.recall_setter_correct

# Check for item in wrong dimensions
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{"pve.recall_point_setter":{"Dimension":"minecraft:the_end"}}}},OnGround:1b}] \
 at @s unless dimension minecraft:the_end run tag @s add pve.recall_setter_incorrect

# Track item age on ground
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{"pve.recall_point_setter":{"Dimension":"minecraft:the_end"}}}},OnGround:1b}] \
 run scoreboard players add @s pve.recall.setter_casting_time 1

# Generate particle on item (correct)
execute at @e[type=item,tag=pve.recall_setter_correct] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 100 10

# Generate particle on item (incorrect)
execute at @e[type=item,tag=pve.recall_setter_incorrect] run particle minecraft:angry_villager ~ ~ ~ 0.1 0.1 0.1 100 10

# Set the recall point (When its age reaches 99)
execute at @e[type=item,tag=pve.recall_setter_correct,scores={pve.recall.setter_casting_time=99..}] run \
 data modify storage pve:recall Pos set from entity @e[type=item,tag=pve.recall_setter_correct,limit=1] Pos
execute at @e[type=item,tag=pve.recall_setter_correct,scores={pve.recall.setter_casting_time=99..}] run \
 data modify storage pve:recall Dimension set value "minecraft:the_end"

# Destroy item when it's in wrong dimension
execute at @e[type=item,tag=pve.recall_setter_incorrect,scores={pve.recall.setter_casting_time=100..}] run \
 summon lightning_bolt ~ ~ ~

# Broadcast (success)
execute as @e[type=item,tag=pve.recall_setter_correct,scores={pve.recall.setter_casting_time=100..}] run function pve:recall/setpoint/broadcast {selector:"@s"}

# Cleanup (success)
kill @e[type=item,tag=pve.recall_setter_correct,scores={pve.recall.setter_casting_time=100..}]
