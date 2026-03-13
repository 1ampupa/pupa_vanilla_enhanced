# Summon an afk at everyone position
execute if score pve.afk_detection pve.features matches 1 at @a run summon marker ~ ~ ~ {Tags:["pve.afk_marker"]}

# Check player distance using marker position
execute if score pve.afk_detection pve.features matches 1 run schedule function pve:afk_detection/check 30s

# Looping
schedule function pve:afk_detection 31s
