
# Summon Marker at Player Location
execute at @a[nbt={Dimension:"minecraft:overworld"}] unless entity @e[tag=summonspider,type=marker,distance=..50] run summon marker ~ ~ ~ {Tags:[summonspider]}


# Store current marker position (X, Y, Z) in scoreboards
execute as @e[tag=summonspider,type=marker] store result score @s MarkerPosX run data get entity @s Pos[0] 1
execute as @e[tag=summonspider,type=marker] store result score @s MarkerPosY run data get entity @s Pos[1] 1
execute as @e[tag=summonspider,type=marker] store result score @s MarkerPosZ run data get entity @s Pos[2] 1

# Generate random offsets for X, Y, and Z
execute as @e[tag=summonspider,type=marker] store result score Spiders RandomX run random value -25..25
execute as @e[tag=summonspider,type=marker] store result score Spiders RandomY run random value -20..20
execute as @e[tag=summonspider,type=marker] store result score Spiders RandomZ run random value -25..25

# Add RandomX, RandomY, and RandomZ to the marker's current position
scoreboard players operation @e[tag=summonspider,type=marker] MarkerPosX += Spiders RandomX
scoreboard players operation @e[tag=summonspider,type=marker] MarkerPosY += Spiders RandomY
scoreboard players operation @e[tag=summonspider,type=marker] MarkerPosZ += Spiders RandomZ

# Teleport the marker based on the final calculated positions
execute as @e[tag=summonspider,type=marker] store result entity @s Pos[0] double 1 run scoreboard players get @s MarkerPosX
execute as @e[tag=summonspider,type=marker] store result entity @s Pos[1] double 1 run scoreboard players get @s MarkerPosY
execute as @e[tag=summonspider,type=marker] store result entity @s Pos[2] double 1 run scoreboard players get @s MarkerPosZ

execute at @e[tag=summonspider,type=marker] unless entity @a[distance=..100] run kill @e[type=marker,limit=1,sort=nearest,tag=summonspider]

execute at @e[tag=summonspider,type=marker] run summon marker ~ ~ ~ {Tags:[skytest]}
execute at @e[tag=summonspider,type=marker] run spreadplayers ~ ~ 1 1 false @e[tag=skytest,type=marker,limit=1,sort=nearest]

execute at @e[tag=summonspider,type=marker] unless entity @e[type=player,distance=..10] unless entity @e[type=spider,distance=..1] unless entity @e[tag=skytest,type=marker,distance=..5] if block ~ ~ ~ #air if block ~-1 ~ ~ #air if block ~1 ~ ~ #air if block ~-1 ~ ~-1 #air if block ~-1 ~ ~1 #air if block ~1 ~ ~1 #air if block ~1 ~ ~-1 #air if block ~ ~ ~-1 #air if block ~ ~ ~1 #air if block ~ ~-1 ~ stone run summon spider ~ ~ ~
execute at @e[tag=summonspider,type=marker] unless entity @e[type=player,distance=..20] unless entity @a[nbt={SelectedItem:{id:"minecraft:nautilus_shell"}},distance=..50] unless entity @a[nbt={equipment:{offhand:{id:"minecraft:nautilus_shell"}}},distance=..50] unless entity @e[type=drowned,distance=..20] if block ~ ~ ~ water if block ~ ~1 ~ water if block ~ ~10 ~ water unless block ~ ~-1 ~ water run summon drowned ~ ~ ~
execute at @e[tag=summonspider,type=marker] unless entity @e[type=player,distance=..15] unless entity @e[type=cave_spider,distance=..1] unless entity @e[type=marker,tag=skytest,distance=..10] if block ~ ~ ~ #air if block ~ ~-1 ~ deepslate run summon cave_spider ~ ~ ~
execute at @e[tag=summonspider,type=marker] unless entity @e[type=player,distance=..10] unless entity @e[type=zombie,distance=..1] unless entity @e[tag=skytest,type=marker,distance=..10] if block ~ ~ ~ #air if block ~ ~1 ~ #air if block ~ ~-1 ~ mossy_stone_bricks run summon zombie ~ ~ ~
execute at @e[tag=summonspider,type=marker] unless entity @e[type=player,distance=..10] unless entity @e[type=zombie,distance=..1] unless entity @e[tag=skytest,type=marker,distance=..10] if block ~ ~ ~ #air if block ~ ~1 ~ #air if block ~ ~-1 ~ cracked_stone_bricks run summon zombie ~ ~ ~


execute as @e[type=spider,tag=!mentioned] run tellraw Erryntai {"text": "Spider has been Summoned"}
execute as @e[type=cave_spider,tag=!mentioned] run tellraw Erryntai {"text": "Spider has been Summoned"}
tag @e[type=spider,tag=!mentioned] add mentioned
tag @e[type=cave_spider,tag=!mentioned] add mentioned


execute at @e[tag=summonspider,type=marker] unless entity @a[distance=..50] run kill @e[type=marker,tag=summonspider,limit=1,sort=nearest]
kill @e[tag=skytest,type=marker]
