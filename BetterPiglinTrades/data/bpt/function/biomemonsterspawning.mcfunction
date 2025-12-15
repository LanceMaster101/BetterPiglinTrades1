execute at @a[nbt={Dimension:"minecraft:overworld"}] run summon marker ~ ~ ~ {Tags:[summonbiome]}
execute at @e[tag=summonbiome] run spreadplayers ~ ~ 50 50 false @e[tag=summonbiome,limit=1,sort=nearest,distance=..1]

execute at @e[tag=summonbiome] if block ~ ~-1 ~ jungle_leaves unless entity @e[type=creeper,distance=..20] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon creeper ~ ~ ~ {Tags:[myspawn]}
execute at @e[tag=summonbiome] if block ~ ~-1 ~ dark_oak_leaves unless entity @e[type=creeper,distance=..20] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon creeper ~ ~ ~ {Tags:[myspawn]}
execute at @e[tag=summonbiome] if block ~ ~-1 ~ sand if block ~2 ~-1 ~ sand if block ~-2 ~-1 ~ sand if block ~ ~-1 ~2 sand if block ~ ~-1 ~-2 sand unless block ~20 61 ~20 water unless block ~-20 61 ~-20 water unless block ~20 61 ~-20 water unless block ~-20 61 ~20 water unless entity @e[type=husk,distance=..10] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon husk ~ ~ ~
execute at @e[tag=summonbiome] if block ~ ~-1 ~ snow_block unless entity @e[type=stray,distance=..10] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon stray ~ ~ ~
execute at @e[tag=summonbiome] if block ~ ~-1 ~ powder_snow unless entity @e[type=stray,distance=..10] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon stray ~ ~ ~
execute at @e[tag=summonbiome] if block ~ ~-.5 ~ mud unless entity @e[type=bogged,distance=..10] unless entity @e[tag=jackward,distance=..50] unless entity @a[distance=..20] run summon bogged ~ ~ ~

tag @e[type=husk] add myspawn

kill @e[tag=summonbiome]