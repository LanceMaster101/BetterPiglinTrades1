scoreboard players set Check Entities 0
execute as @e run scoreboard players add Check Entities 1

function bpt:timers
execute if score @p BPT1SecondTimer matches 16 run function bpt:compass
execute if score @p BPT1SecondTimer matches 11 run function bpt:betterai
function bpt:monsterspawn
function bpt:miscellaneous
execute if score @p BPT1SecondTimer matches 6 run function bpt:villagers
function bpt:food
execute if score @p BPT1SecondTimer matches 14 run function bpt:thirst

execute at @e[type=iron_golem] unless entity @e[type=villager,nbt=!{Age:0},distance=..100,tag=!mommy] unless score Villagers BPTVillagerNumber matches 10.. run tag @e[type=minecraft:iron_golem,limit=1,sort=nearest] add babytime
execute at @e[tag=babytime] at @e[type=villager,distance=..3,tag=!mommy] run tp @e[type=villager,limit=1,sort=nearest,tag=!mommy] ~ ~ ~ facing entity @e[tag=babytime,limit=1,sort=nearest]
execute at @e[tag=babytime] at @e[type=villager,distance=..3,tag=!mommy] run tp @e[type=villager,limit=1,sort=nearest] ^ ^ ^.1
execute at @e[tag=babytime] at @e[type=villager,distance=..3,tag=!mommy] run particle heart ~ ~1 ~ 1 1 1 50 1 force @a
execute if score @p BPT10SecondTimer matches 1 at @e[tag=babytime] at @e[type=villager,distance=..3,nbt={Age:0},tag=!mommy] run summon villager ~ ~ ~ {Age:-24000}

gamerule reduced_debug_info false
execute as @a[scores={BPTDamageTakenCaveSpider=1..}] at @s if entity @e[type=cave_spider,distance=..1] run effect give @s poison 10 0 false

execute if score @p BPT1SecondTimer matches 4 run function bpt:lavatogold

execute at @a[scores={BPTBrownEggUsedFireball=1..}] at @e[type=egg,limit=1,sort=nearest] run summon fireball ~ ~ ~ {Tags:[playerthrownfireball],ExplosionPower:3}
execute as @e[type=fireball,tag=playerthrownfireball] at @s run data modify entity @s Motion set from entity @e[type=egg,limit=1,sort=nearest] Motion
tag @e[type=fireball,tag=playerthrownfireball] remove playerthrownfireball
execute at @a[scores={BPTBrownEggUsedFireball=1..}] run kill @e[type=egg,limit=1,sort=nearest]
scoreboard players set @a BPTBrownEggUsedFireball 0

function bpt:attributefixer

execute if entity @e[type=wither] run function bpt:bettawitha

team join Skeletons @e[type=skeleton]
team join Skeletons @e[type=wither_skeleton]
team join Skeletons @e[type=wither]

execute at @a[advancements={story/follow_ender_eye=true},tag=!eyespy] run summon marker ~ ~ ~ {Tags:[zombiestronghold]}
execute as @a[advancements={story/follow_ender_eye=true},tag=!eyespy] run tag @s add eyespy

execute as @e[type=spider] store success score @s BPTSpiderAngry run data get entity @s last_hurt_by_mob

execute as @e[type=spider,scores={BPTSpiderAngry=0},limit=1,sort=random] at @s run damage @s 0 minecraft:generic by @e[type=villager,limit=1,sort=nearest,distance=..15]


function bpt:armorbonuses