#gamerule doMobSpawning false

#function bpt:newnethersummoning
#function bpt:newspidersummoning
function bpt:improvedspawning

execute if score @p BPT10SecondTimer matches 1 if score Time DayTime matches 13000.. run function bpt:phantomspawning
execute if entity @a[nbt={Dimension:"minecraft:the_end"}] if score @p BPT30SecondTimer matches 1 if entity @e[type=ender_dragon] run function bpt:endphantomspawning
execute if entity @a[nbt={Dimension:"minecraft:the_end"}] if score @p BPT60SecondTimer matches 1 unless entity @e[type=ender_dragon] run function bpt:endphantomspawning

execute if score @p BPT10SecondTimer matches 1 run function bpt:biomemonsterspawning

execute if score @p BPT1SecondTimer matches 1 at @e[sort=random,limit=1] run fill ~ ~-1 ~ ~ ~-1 ~ infested_stone replace stone
execute if score @p BPT1SecondTimer matches 1 at @e[sort=random,limit=1] run fill ~ ~-1 ~ ~ ~-1 ~ infested_deepslate replace deepslate

execute if score @p BPT10SecondTimer matches 1 at @e[type=cave_spider,limit=1,sort=random] run setblock ~ ~ ~ cobweb