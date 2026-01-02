clear @s minecraft:knowledge_book[minecraft:custom_data={recipe_stab_1_aim:1b}]
execute if score craft_toggle_ craft_toggle_ matches 1 run give @s fishing_rod[damage=63,custom_data={stab_aim_1:1b},minecraft:custom_name=[{"text":"STAB POWER 1 (aim)","italic":false}]]
execute if score craft_toggle_ craft_toggle_ matches 0 run give @s minecraft:tnt 2
execute if score craft_toggle_ craft_toggle_ matches 0 run give @s minecraft:fishing_rod
execute if score craft_toggle_ craft_toggle_ matches 0 run give @s minecraft:redstone 2