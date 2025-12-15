execute store result score MidDay Random run random value 1..6

execute at @a run summon marker ~ ~ ~ {Tags:[midday]}
execute at @a run spreadplayers ~ ~ 1 50 true @e[tag=midday,limit=1,sort=nearest]


execute if score MidDay Random matches 1 at @e[tag=midday] unless entity @a[distance=..20] run summon wandering_trader ~ ~ ~ {Tags:[newtrader]}
execute if score MidDay Random matches 2 at @e[tag=midday] unless entity @a[distance=..20] run summon pillager ~ ~ ~ {Tags:[patrolleader],OnGround:1b,Patrolling:1b,PatrolLeader:1b,HandItems:[{id:crossbow,count:1},{}],HandDropChances:[1f,0f],ArmorItems:[{},{},{},{id:white_banner,components:{item_name:'{"color":"#FFAA00","translate":"block.minecraft.ominous_banner"}',banner_patterns:[{color:cyan,pattern:"minecraft:rhombus"},{color:light_gray,pattern:"minecraft:stripe_bottom"},{color:gray,pattern:"minecraft:stripe_center"},{color:light_gray,pattern:"minecraft:border"},{color:black,pattern:"minecraft:stripe_middle"},{color:light_gray,pattern:"minecraft:half_horizontal"},{color:light_gray,pattern:"minecraft:circle"},{color:black,pattern:"minecraft:border"}]}}],ArmorDropChances:[0f,0f,0f,1f]}
execute if score MidDay Random matches 3 at @e[tag=midday] if block ~ ~-1 ~ grass_block run summon chicken ~ ~ ~
execute if score MidDay Random matches 4 at @e[tag=midday] if block ~ ~-1 ~ grass_block run summon sheep ~ ~ ~
execute if score MidDay Random matches 5 at @e[tag=midday] if block ~ ~-1 ~ grass_block run summon cow ~ ~ ~
execute if score MidDay Random matches 6 at @e[tag=midday] if block ~ ~-1 ~ grass_block run summon pig ~ ~ ~



execute at @e[tag=patrolleader] run summon marker ~ ~ ~ {Tags:[pillagerpatrolmiddaysummon]}
execute at @e[tag=patrolleader] run summon marker ~ ~ ~ {Tags:[pillagerpatrolmiddaysummon]}
execute at @e[tag=patrolleader] run summon marker ~ ~ ~ {Tags:[pillagerpatrolmiddaysummon]}
execute at @e[tag=patrolleader] run summon marker ~ ~ ~ {Tags:[pillagerpatrolmiddaysummon]}

execute at @e[tag=patrolleader] run spreadplayers ~ ~ 2 10 false @e[tag=pillagerpatrolmiddaysummon]
execute at @e[tag=pillagerpatrolmiddaysummon] run summon pillager ~ ~ ~ {OnGround:1b,Patrolling:1b,PatrolLeader:0b,HandItems:[{id:crossbow,count:1},{}],HandDropChances:[0f,0f]}


kill @e[tag=midday]
kill @e[tag=pillagerpatrolmiddaysummon]
