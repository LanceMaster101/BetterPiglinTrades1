
execute at @a[nbt={equipment:{chest:{id:"minecraft:copper_chestplate"}}}] run effect give @a[distance=..10,scores={BPTDamageTakenAmethyst=1..}] resistance 5 0 true
scoreboard players set @a BPTDamageTakenAmethyst 0
execute at @a[nbt={equipment:{legs:{id:"minecraft:copper_leggings"}}}] run effect give @a[distance=..10,scores={BPTSprinting=1..}] speed 1 0 true
scoreboard players set @a BPTSprinting 0
execute at @a[nbt={equipment:{head:{id:"minecraft:copper_helmet"}}},scores={BPTSkyWard=1}] run effect give @a[distance=..10] night_vision 11 0 true
execute as @a store result score @s vel_y run data get entity @s Motion[1] 100
execute at @a[nbt={equipment:{feet:{id:"minecraft:copper_boots"}}}] run effect give @a[distance=..10,scores={vel_y=..-100}] slow_falling 1 0 true

execute at @a[nbt={SelectedItem:{id:"minecraft:copper_pickaxe"}}] run effect give @a[distance=..5] haste 2 0 true
execute at @a[nbt={SelectedItem:{id:"minecraft:copper_axe"}}] run effect give @a[distance=..5] haste 2 0 true
execute at @a[nbt={SelectedItem:{id:"minecraft:copper_sword"}}] run effect give @a[distance=..5] strength 2 0 true
execute at @a[nbt={SelectedItem:{id:"minecraft:copper_hoe"}}] run effect give @a[distance=..5] haste 2 0 true
execute at @a[nbt={SelectedItem:{id:"minecraft:copper_shovel"}}] run effect give @a[distance=..5] haste 2 0 true