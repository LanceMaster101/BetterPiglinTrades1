data modify entity @e[type=villager,limit=1,nbt=!{Age:0},nbt=!{VillagerData:{type:"minecraft:jungle"}}] VillagerData set value {type:"minecraft:jungle"}



function bpt:job


tag @e remove babytime


scoreboard players enable @a VillagerReset 
execute at @a[scores={VillagerReset=1..}] run tag @e[type=villager,limit=1,sort=nearest] remove job

scoreboard players set @a VillagerReset 0
scoreboard players set Villagers BPTVillagerNumber 0
execute as @e[type=villager] run scoreboard players add Villagers BPTVillagerNumber 1