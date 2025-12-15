execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[passivemobspawner]}
execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[passivemobspawner]}
execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[passivemobspawner]}
execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[passivemobspawner]}
execute at @e[tag=passivemobspawner] run spreadplayers ~ ~ 50 50 false @e[tag=passivemobspawner,limit=1,sort=nearest,distance=..1]

execute store result score General BPTSuccess run random value 1..4




kill @e[tag=passivemobspawner]