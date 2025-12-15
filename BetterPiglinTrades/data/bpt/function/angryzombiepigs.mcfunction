team join Piglins @e[type=piglin]
team join Piglins @e[type=piglin_brute]
execute at @e[type=zombified_piglin] run data modify entity @e[limit=1,sort=nearest,type=zombified_piglin] AngryAt set from entity @e[limit=1,sort=nearest,team=Piglins] UUID 
#teleport @e[type=zombified_piglin, nbt={LeftHanded:false}] ~-500 ~ ~
effect give @e[type=zombified_piglin] slowness 5 1 true

execute as @e[type=minecraft:zombified_piglin,tag=!angrified] at @s run damage @e[type=piglin_brute,limit=1,sort=nearest,distance=..10] 0 minecraft:mob_attack by @s
execute at @e[type=minecraft:zombified_piglin,tag=!angrified] if entity @e[type=piglin_brute,distance=..10] run tag @s add angrified