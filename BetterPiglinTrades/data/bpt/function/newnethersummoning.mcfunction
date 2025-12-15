# Summon Marker at Player Location
execute at @a[nbt={Dimension:"minecraft:the_nether"}] unless entity @e[tag=summonnether,type=marker,distance=..50] run summon marker ~ ~ ~ {Tags:[summonnether]}

# Store current marker position (X, Y, Z) in scoreboards
execute as @e[tag=summonnether,type=marker] store result score @s MarkerPosX run data get entity @s Pos[0] 1
execute as @e[tag=summonnether,type=marker] store result score @s MarkerPosY run data get entity @s Pos[1] 1
execute as @e[tag=summonnether,type=marker] store result score @s MarkerPosZ run data get entity @s Pos[2] 1

# Generate random offsets for X, Y, and Z
execute as @e[tag=summonnether,type=marker] store result score Nether RandomX run random value -25..25
execute as @e[tag=summonnether,type=marker] store result score Nether RandomY run random value -20..20
execute as @e[tag=summonnether,type=marker] store result score Nether RandomZ run random value -25..25

# Add RandomX, RandomY, and RandomZ to the marker's current position
scoreboard players operation @e[tag=summonnether,type=marker] MarkerPosX += Nether RandomX
scoreboard players operation @e[tag=summonnether,type=marker] MarkerPosY += Nether RandomY
scoreboard players operation @e[tag=summonnether,type=marker] MarkerPosZ += Nether RandomZ

# Teleport the marker based on the final calculated positions
execute as @e[tag=summonnether,type=marker] store result entity @s Pos[0] double 1 run scoreboard players get @s MarkerPosX
execute as @e[tag=summonnether,type=marker] store result entity @s Pos[1] double 1 run scoreboard players get @s MarkerPosY
execute as @e[tag=summonnether,type=marker] store result entity @s Pos[2] double 1 run scoreboard players get @s MarkerPosZ

execute at @e[tag=summonnether] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace crimson_roots
execute at @e[tag=summonnether] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace warped_roots
execute at @e[tag=summonnether] unless entity @e[type=player,distance=..10] if block ~ ~ ~ air unless block ~ ~-1 ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run summon marker ~ ~ ~ {Tags:[nethersummon]}

execute at @e[tag=nethersummon] if block ~ ~-1 ~ lava unless entity @e[type=blaze,distance=..50] unless entity @e[type=player,distance=..20] run summon blaze ~ ~1 ~
execute at @e[tag=nethersummon] if block ~ ~-.5 ~ soul_sand unless entity @e[type=skeleton,distance=..10] run summon skeleton ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ soul_soil unless entity @e[type=wither_skeleton,distance=..10] run summon wither_skeleton ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ basalt unless entity @e[type=magma_cube,distance=..1] run summon magma_cube ~ ~ ~ {Size:1}
execute at @e[tag=nethersummon] if block ~ ~-1 ~ polished_blackstone_bricks unless entity @e[type=piglin_brute,distance=..5] run summon piglin_brute ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ netherrack if entity @e[type=piglin,distance=..10] run summon zombified_piglin ~ ~ ~ {LeftHanded:1b}
execute at @e[tag=nethersummon] if block ~ ~-1 ~ netherrack unless entity @e[type=piglin,distance=..10] run summon piglin ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ crimson_nylium if block ~-1 ~ ~ air if block ~1 ~ ~ air if block ~-1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~ ~ ~-1 air if block ~ ~ ~1 air unless entity @e[type=hoglin,distance=..5] run summon hoglin ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ warped_nylium unless entity @e[type=enderman,distance=..5] run summon enderman ~ ~ ~
execute at @e[tag=nethersummon] if block ~ ~-1 ~ magma_block if block ~-1 ~ ~ air if block ~1 ~ ~ air if block ~-1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~ ~ ~-1 air if block ~ ~ ~1 air unless entity @e[type=magma_cube,distance=..1] run summon magma_cube ~ ~ ~ {Size:2}

execute at @e[tag=summonnether] unless entity @e[type=ghast,distance=..100] unless entity @e[type=player,distance=..20] if block ~ ~ ~ air if block ~5 ~5 ~5 air if block ~5 ~5 ~-5 air if block ~-5 ~5 ~5 air if block ~-5 ~5 ~-5 air if block ~5 ~-5 ~5 air if block ~5 ~-5 ~-5 air if block ~-5 ~-5 ~5 air if block ~-5 ~-5 ~-5 air run summon ghast ~ ~ ~

execute at @e[tag=summonnether] unless entity @a[distance=..50] run kill @e[type=marker,tag=summonnether,limit=1,sort=nearest]
kill @e[tag=nethersummon,type=marker]

tp @e[type=zombified_piglin,nbt=!{LeftHanded:1b}] ~500 ~ ~