execute at @a[nbt={Dimension:"minecraft:the_end"}] run summon marker ~ ~ ~ {Tags:[summonenderman]}
execute at @e[tag=summonenderman] run spreadplayers ~ ~ 50 50 false @e[tag=summonenderman,limit=1,sort=nearest,distance=..1]
execute at @e[tag=summonenderman] unless entity @e[type=enderman,distance=..20] run summon enderman ~ ~ ~
kill @e[tag=summonenderman]