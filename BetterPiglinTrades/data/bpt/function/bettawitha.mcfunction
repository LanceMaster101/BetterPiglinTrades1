execute at @a[nbt={Dimension:"minecraft:overworld"}] at @e[type=wither,distance=..100] run fill ~-10 ~ ~-10 ~10 ~5 ~10 air
execute at @a[nbt={Dimension:"minecraft:the_nether"}] at @e[type=wither,distance=..100] run fill ~-10 ~-1 ~-10 ~10 ~5 ~10 air replace netherrack
execute at @a[nbt={Dimension:"minecraft:the_nether"}] at @e[type=wither,distance=..100] run fill ~-10 ~-1 ~-10 ~10 ~5 ~10 air replace blackstone
execute at @a[nbt={Dimension:"minecraft:the_nether"}] at @e[type=wither,distance=..100] run fill ~-10 ~-1 ~-10 ~10 ~5 ~10 air replace basalt
execute at @a[nbt={Dimension:"minecraft:the_end"}] at @e[type=wither,distance=..100] run fill ~-10 ~-1 ~-10 ~10 ~5 ~10 air replace bedrock
execute at @a[nbt={Dimension:"minecraft:the_end"}] at @e[type=wither,distance=..100] run fill ~-10 ~-1 ~-10 ~10 ~5 ~10 air replace end_stone

execute if score @p BPT10SecondTimer matches 1 at @e[type=wither] at @e[type=!player,distance=..10,limit=1,sort=random] run summon wither_skeleton
execute if score @p BPT10SecondTimer matches 1 at @e[type=wither] run effect give @e[distance=..10] wither 41 1 false
execute at @e[type=wither] run effect give @e[distance=..2] wither 41 1 false

execute as @e[type=wither_skull] run data modify entity @s explosion_power set value 10
execute as @e[type=wither_skull] run data modify entity @s damage set value 12

execute as @e[type=wither] store result score @s BPTWitherHealth run data get entity @s Health

execute at @e[type=wither,scores={BPTWitherHealth=..20}] run summon tnt ~ ~ ~ {explosion_power:30,fuse:0}