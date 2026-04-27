# Set the recall point
$data modify storage pve:recall Pos set value [$(0),$(1),$(2)]
$data modify storage pve:recall Dimension set value $(Dimension)

function pve:recall/setpoint/broadcast
