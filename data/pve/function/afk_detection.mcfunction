# Summon an afk at everyone position
execute at @a run summon marker ~ ~ ~ {Tags:["pve.afk_marker"]}

# Check player distance using marker position
schedule function pve:afk_detection/check 30s

# Looping
schedule function pve:afk_detection 31s
