execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[summonphantom]}
execute at @e[tag=summonphantom] run spreadplayers ~ ~ 50 50 false @e[tag=summonphantom,limit=1,sort=nearest,distance=..1]
execute at @e[tag=summonphantom] unless entity @e[type=phantom,distance=..30] unless entity @e[tag=jackward,distance=..50] run summon phantom ~ ~20 ~
kill @e[tag=summonphantom]