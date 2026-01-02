scoreboard objectives add one dummy
scoreboard objectives add toggle_message trigger
scoreboard objectives add craft_toggle trigger
scoreboard objectives add toggle_message_ dummy
scoreboard objectives add craft_toggle_ dummy
execute unless score one one matches 1 run function orbital:one
scoreboard players set one one 1
execute if score toggle_message_ toggle_message_ matches 1 run tellraw @a [{text:"Orbital Strike Cannon DataPack by ",color:gold},{text:"Stepan1411",color:red,click_event:{action:"open_url",url:"https://modrinth.com/user/Stepan1411_Studio"}},{text:" & "},{text:"Shanahan",color:red,click_event:{action:"open_url",url:"https://modrinth.com/user/Shanahan_7"}}]
execute if score toggle_message_ toggle_message_ matches 1 if score craft_toggle_ craft_toggle_ matches 1 run tellraw @a [{"text":"Orbital Strike Cannon ","color":"gold"},{"text":"craft","underlined":true,"color":"gold"},{"text":":","color":"gold"}," ",{"text":"enebled","color":"green"}]
execute if score toggle_message_ toggle_message_ matches 1 if score craft_toggle_ craft_toggle_ matches 0 run tellraw @a [{"text":"Orbital Strike Cannon ","color":"gold"},{"text":"craft","underlined":true,"color":"gold"},{"text":":","color":"gold"}," ",{"text":"disbled","color":"red"}]
gamerule maxCommandChainLength 999999999
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add osc_recipe dummy
scoreboard objectives add osc_counter dummy
scoreboard objectives add nuclear-suitcase trigger
scoreboard objectives add remove_all_charges trigger
scoreboard objectives add charges_list trigger
scoreboard objectives add launch trigger
scoreboard objectives add delete_nearest trigger
scoreboard objectives add add_stab_charge trigger
scoreboard objectives add add_nuke_charge trigger