scoreboard players add @p BPT1SecondTimer 1
scoreboard players add @p BPT10SecondTimer 1
scoreboard players add @a BPT30SecondTimer 1
scoreboard players add @a BPT60SecondTimer 1
scoreboard players add @a BPT600SecondTimer 1

execute if score @p BPT1SecondTimer matches 20.. run scoreboard players set @a BPT1SecondTimer 0
execute if score @p BPT10SecondTimer matches 200.. run scoreboard players set @a BPT10SecondTimer 0
execute if score @p BPT30SecondTimer matches 600.. run scoreboard players set @a BPT30SecondTimer 0
execute if score @p BPT60SecondTimer matches 1200.. run scoreboard players set @a BPT60SecondTimer 0
execute if score @p BPT600SecondTimer matches 12000.. run scoreboard players set @a BPT600SecondTimer 0
scoreboard players remove @a[scores={BPTSpectatorTime=1..}] BPTSpectatorTime 1

execute store result score Time DayTime run time query daytime