tellraw @a [{text:"Loaded pupa's VanillaEnhanced Release 1.2.1 by 1ampupa\n",color:"green",bold:true}, \
{"text":"For operators, please run ",color:"yellow",bold:false}, \
{"text":"THIS FUNCTION","bold":true ,"click_event":{action:"run_command",command:"function pve:datapack_onboard"}}, \
{"text":", when you use this datapack for the first time.\n",color:"yellow",bold:false}, \
{"text":"Changelog of this release is available ",color:"white",bold:false}, \
{"text":"HERE\n","bold":true ,"click_event":{action:"show_dialog",dialog:"pve:patch_notes"}}, \
{"text":"For operators, To change the datapack settings, please ",color:"yellow",bold:false}, \
{"text":"CLICK HERE","bold":true ,"click_event":{action:"show_dialog",dialog:"pve:datapack_settings"}}, \
]

execute as @a at @a run playsound minecraft:entity.player.levelup neutral @a ~ ~ ~ 1
