execute store result score Midnight Random run random value 1..6

execute if score Midnight Random matches 1 at @r[nbt={Dimension:"minecraft:overworld"}] at @e[limit=1,sort=random,distance=..50,type=!player,type=!marker,type=!marker] run summon witch ~ ~ ~
execute if score Midnight Random matches 2 run effect give @r[nbt={Dimension:"minecraft:overworld"}] bad_omen 15 0 true
execute if score Midnight Random matches 3 at @a[nbt={Dimension:"minecraft:overworld"}] run weather thunder
execute if score Midnight Random matches 4 run effect give @a[nbt={Dimension:"minecraft:overworld"}] blindness 180 0 true
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute if score Midnight Random matches 5 at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[midnightzombies]}
execute at @a run spreadplayers ~ ~ 5 50 false @e[tag=midnightzombies,limit=10,sort=nearest]
execute at @e[tag=midnightzombies] unless entity @a[distance=..10] run summon zombie_villager ~ ~ ~
kill @e[tag=midnightzombies]