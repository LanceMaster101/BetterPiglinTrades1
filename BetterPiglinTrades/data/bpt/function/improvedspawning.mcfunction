execute at @a[scores={BPTSpawnerPlaced=1..}] run summon marker ~ ~ ~ {Tags:[spawnerprotection]}
execute at @a[scores={BPTSpawnerBroken=1..}] run kill @e[type=marker,tag=spawnerprotection,distance=..10]

scoreboard players set @a BPTSpawnerPlaced 0
scoreboard players set @a BPTSpawnerBroken 0

execute at @e[type=marker,tag=spawnerprotection] run tag @e[distance=..15] add myspawn 
tag @e[type=zombified_piglin,nbt={LeftHanded:1b}] add myspawn

tag @e[type=zombie,tag=!myspawn,tag=!done,tag=!needsassignment] add needsassignment
tag @e[type=skeleton,tag=!myspawn,tag=!done,tag=!needsassignment] add needsassignment
tag @e[type=creeper,tag=!myspawn,tag=!done,tag=!needsassignment] add needsassignment
tag @e[type=spider,tag=!myspawn,tag=!done,tag=!needsassignment] add needsassignment
tag @e[type=wither_skeleton,tag=!myspawn,tag=!done,tag=!needsassignment] add needsassignment
tag @e[type=zombified_piglin,tag=!myspawn,tag=!done] add done

execute at @e[tag=needsassignment,tag=!done] if block ~ ~-.5 ~ soul_sand run summon skeleton ~ ~ ~ {Tags:[myspawn],equipment:{mainhand:{id:bow}}}
execute as @e[tag=needsassignment,tag=!done] at @s if block ~ ~-.5 ~ soul_sand run tag @s add done

execute at @e[tag=needsassignment,tag=!done] if block ~ ~-1 ~ soul_soil run summon wither_skeleton ~ ~ ~ {Tags:[myspawn],equipment:{mainhand:{id:stone_sword}}}
execute as @e[tag=needsassignment,tag=!done] at @s if block ~ ~-1 ~ soul_soil run tag @s add done

execute at @e[tag=needsassignment,tag=!done] run summon marker ~ ~ ~ {Tags:[surface]}
execute at @e[tag=needsassignment,tag=!done] run spreadplayers ~ ~ 1 1 false @e[type=marker,tag=surface,limit=1,sort=nearest] 
execute as @e[tag=needsassignment,tag=!done] at @s if entity @e[type=marker,tag=surface,distance=..5] run tag @s add done
kill @e[type=marker,tag=surface]

execute at @e[tag=needsassignment,tag=!done] if entity @e[type=marker,tag=zombiestronghold,distance=..100] run summon zombie ~ ~ ~ {Tags:[myspawn]}
execute as @e[tag=needsassignment,tag=!done] at @s if entity @e[type=marker,tag=zombiestronghold,distance=..100] run tag @s add done

execute as @e[tag=needsassignment,tag=!done] at @s if block ~ ~-1 ~ nether_bricks run tag @s add done

execute as @e[tag=needsassignment,tag=!done] at @s if entity @a[nbt={Dimension:"minecraft:the_nether"},distance=..1000] run tag @s add done


execute as @e[tag=needsassignment,tag=!done] at @s if block ~1 ~ ~1 #air if block ~1 ~ ~-1 #air if block ~-1 ~ ~1 #air if block ~-1 ~ ~-1 #air run summon spider ~ ~ ~ {Tags:[myspawn]}
execute as @e[tag=needsassignment,tag=!done] at @s if block ~1 ~ ~1 #air if block ~1 ~ ~-1 #air if block ~-1 ~ ~1 #air if block ~-1 ~ ~-1 #air run tag @s add done

execute at @e[tag=needsassignment,tag=!done] run summon cave_spider
execute as @e[tag=needsassignment,tag=!done] run tag @s add done

execute as @e[tag=done,type=!player] at @s run tp ~1000 ~ ~

execute at @a[nbt={Dimension:"minecraft:the_nether"}] unless entity @e[type=blaze,distance=..100] if block ~50 ~-2 ~50 lava if block ~50 ~-1 ~50 #air if block ~50 ~ ~50 #air run summon blaze ~50 ~-1 ~50
execute at @a[nbt={Dimension:"minecraft:the_nether"}] unless entity @e[type=blaze,distance=..100] if block ~50 ~-2 ~-50 lava if block ~50 ~-1 ~-50 #air if block ~50 ~ ~-50 #air run summon blaze ~50 ~-1 ~-50
execute at @a[nbt={Dimension:"minecraft:the_nether"}] unless entity @e[type=blaze,distance=..100] if block ~-50 ~-2 ~50 lava if block ~-50 ~-1 ~50 #air if block ~-50 ~ ~50 #air run summon blaze ~-50 ~-1 ~50
execute at @a[nbt={Dimension:"minecraft:the_nether"}] unless entity @e[type=blaze,distance=..100] if block ~-50 ~-2 ~-50 lava if block ~-50 ~-1 ~-50 #air if block ~-50 ~ ~-50 #air run summon blaze ~-50 ~-1 ~-50

execute at @e[type=piglin_brute,tag=!myspawn] run summon marker ~ ~ ~ {Tags:[piglinbrutespawning]}
tag @e[type=piglin_brute] add myspawn

execute at @e[type=marker,tag=piglinbrutespawning,limit=1,sort=random] unless entity @e[type=piglin_brute,distance=..20] if block ~ ~ ~ #air if block ~ ~1 ~ #air unless block ~ ~-1 ~ #air unless block ~ ~-1 ~ lava run summon piglin_brute ~ ~ ~ {Tags:[myspawn]}

