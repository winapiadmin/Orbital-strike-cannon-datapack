# /trigger commands
execute as @a[scores={nuclear-suitcase=1..}] run dialog show @s orbital:main
scoreboard players set @a[scores={nuclear-suitcase=1..}] nuclear-suitcase 0
scoreboard players enable @a nuclear-suitcase

execute as @a[scores={remove_all_charges=1..}] run function orbital:nuclear_suitcase/remove_all
scoreboard players set @a[scores={remove_all_charges=1..}] remove_all_charges 0
scoreboard players enable @a remove_all_charges

execute as @a[scores={charges_list=1..}] run function orbital:nuclear_suitcase/list
scoreboard players set @a[scores={charges_list=1..}] charges_list 0
scoreboard players enable @a charges_list

execute as @a[scores={launch=1..}] run function orbital:nuclear_suitcase/launch
scoreboard players set @a[scores={launch=1..}] launch 0
scoreboard players enable @a launch

execute as @a[scores={toggle_message=1}] run scoreboard players set toggle_message_ toggle_message_ 0
scoreboard players enable @a toggle_message

execute as @a[scores={toggle_message=0}] run scoreboard players set toggle_message_ toggle_message_ 1
scoreboard players enable @a toggle_message

execute as @a[scores={craft_toggle=1}] run scoreboard players set craft_toggle_ craft_toggle_ 0
scoreboard players enable @a craft_toggle

execute as @a[scores={craft_toggle=0}] run scoreboard players set craft_toggle_ craft_toggle_ 1
scoreboard players enable @a craft_toggle

execute as @a[scores={delete_nearest=1..}] run kill @n[tag=osc]
scoreboard players set @a[scores={delete_nearest=1..}] delete_nearest 0
scoreboard players enable @a delete_nearest

execute as @a[scores={add_stab_charge=1}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_stab_power_1
execute as @a[scores={add_stab_charge=2}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_stab_power_2
execute as @a[scores={add_stab_charge=3}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_stab_power_3
scoreboard players enable @a add_stab_charge
scoreboard players set @a[scores={add_stab_charge=..3}] add_stab_charge 0

execute as @a[scores={add_nuke_charge=1}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_nuke_power_1
execute as @a[scores={add_nuke_charge=2}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_nuke_power_2
execute as @a[scores={add_nuke_charge=3}] positioned as @s run function orbital:nuclear_suitcase/spawn/spawn_nuke_power_3
scoreboard players enable @a add_nuke_charge
scoreboard players set @a[scores={add_nuke_charge=..3}] add_nuke_charge 0

# tracking of fishing rods

execute as @a if predicate orbital:nuke_1 at @s run function orbital:osc_rod/nuke_1/check_bobber_power_1

execute as @a if predicate orbital:nuke_2 at @s run function orbital:osc_rod/nuke_2/check_bobber_power_2

execute as @a if predicate orbital:nuke_3 at @s run function orbital:osc_rod/nuke_3/check_bobber_power_3

execute as @a if predicate orbital:nuke_aim_1 at @s run function orbital:osc_rod/nuke_aim_1/check_bobber_power_1

execute as @a if predicate orbital:nuke_aim_2 at @s run function orbital:osc_rod/nuke_aim_2/check_bobber_power_2

execute as @a if predicate orbital:nuke_aim_3 at @s run function orbital:osc_rod/nuke_aim_3/check_bobber_power_3

execute as @a if predicate orbital:stab_1 at @s run function orbital:osc_rod/stab_1/check_bobber_power_1

execute as @a if predicate orbital:stab_2 at @s run function orbital:osc_rod/stab_2/check_bobber_power_2

execute as @a if predicate orbital:stab_3 at @s run function orbital:osc_rod/stab_3/check_bobber_power_3

execute as @a if predicate orbital:stab_aim_1 at @s run function orbital:osc_rod/stab_aim_1/check_bobber_power_1

execute as @a if predicate orbital:stab_aim_2 at @s run function orbital:osc_rod/stab_aim_2/check_bobber_power_2

execute as @a if predicate orbital:stab_aim_3 at @s run function orbital:osc_rod/stab_aim_3/check_bobber_power_3

execute as @a if predicate orbital:stab_aim_1_inf at @s run function orbital:osc_rod/stab_aim_1_inf/check_bobber_power_1

execute as @a if predicate orbital:stab_aim_2_inf at @s run function orbital:osc_rod/stab_aim_2_inf/check_bobber_power_2

execute as @a if predicate orbital:stab_aim_3_inf at @s run function orbital:osc_rod/stab_aim_3_inf/check_bobber_power_3

execute as @a if predicate orbital:c_nuke at @s run function orbital:osc_rod/cinematic_nuke/check_bobber

execute as @a if predicate orbital:c_nuke_aim at @s run function orbital:osc_rod/cinematic_nuke_aim/check_bobber

# Recipe give

recipe give @a orbital:nuke_1
recipe give @a orbital:nuke_1_aim

recipe give @a orbital:nuke_2
recipe give @a orbital:nuke_2_aim

recipe give @a orbital:nuke_3
recipe give @a orbital:nuke_3_aim

recipe give @a orbital:stab_1
recipe give @a orbital:stab_1_aim

recipe give @a orbital:stab_2
recipe give @a orbital:stab_2_aim

recipe give @a orbital:stab_3
recipe give @a orbital:stab_3_aim

# Recipe check

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_1:1b}] run function orbital:recipe/nuke_1
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_1_aim:1b}] run function orbital:recipe/nuke_1_aim

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_2:1b}] run function orbital:recipe/nuke_2
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_2_aim:1b}] run function orbital:recipe/nuke_2_aim

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_3:1b}] run function orbital:recipe/nuke_3
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_nuke_3_aim:1b}] run function orbital:recipe/nuke_3_aim

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_1:1b}] run function orbital:recipe/stab_1
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_1_aim:1b}] run function orbital:recipe/stab_1_aim

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_2:1b}] run function orbital:recipe/stab_2
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_2_aim:1b}] run function orbital:recipe/stab_2_aim

execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_3:1b}] run function orbital:recipe/stab_3
execute as @a if items entity @s container.* minecraft:knowledge_book[minecraft:custom_data={recipe_stab_3_aim:1b}] run function orbital:recipe/stab_3_aim
