# Delete Item if it's in the wrong Dimension
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{"pve.recall_point_setter":{"Dimension":"minecraft:the_end"}}}},OnGround:1b}] \
 at @s unless dimension minecraft:the_end run summon lightning_bolt ~ ~ ~

# Check for item in the_end
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{"pve.recall_point_setter":{"Dimension":"minecraft:the_end"}}}},OnGround:1b}] \
 at @s if dimension minecraft:the_end run tag @s add pve.recall_setter

# Set the recall point
execute at @e[type=item,tag=pve.recall_setter] if dimension minecraft:the_end run \
 data modify storage pve:recall Pos set from entity @e[type=item,tag=pve.recall_setter,limit=1] Pos
execute at @e[type=item,tag=pve.recall_setter] if dimension minecraft:the_end run \
data modify storage pve:recall Dimension set value "minecraft:the_end"

execute at @e[type=item,tag=pve.recall_setter] if dimension minecraft:the_end run function pve:recall/setpoint/broadcast

kill @e[type=item,tag=pve.recall_setter]
