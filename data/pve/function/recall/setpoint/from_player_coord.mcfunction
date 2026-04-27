# Set the recall point
data modify storage pve:recall Pos set from entity @s Pos
data modify storage pve:recall Dimension set string entity @s Dimension

function pve:recall/setpoint/broadcast