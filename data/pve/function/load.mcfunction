tellraw @a [{text:"Loaded pupa's VanillaEnhanced Release 1.1 by 1ampupa\n",color:"green",bold:true}, \
{"text":"For operators, please run function 'pve:onboard' when you use this datapack for the first time.",color:"yellow",bold:false}, \
{"text":"Changelog of this release is available ",color:"white",bold:false}, \
{"text":"HERE\n","bold":true ,"click_event":{action:"show_dialog",dialog:"pve:patch_notes"}}, \
{"text":"For operators, To change the datapack settings, please ",color:"yellow",bold:false}, \
{"text":"CLICK HERE","bold":true ,"click_event":{action:"show_dialog",dialog:"pve:datapack_settings"}}, \
]

dialog show @a pve:patch_notes

execute as @a at @a run playsound minecraft:entity.player.levelup neutral @a ~ ~ ~ 1
