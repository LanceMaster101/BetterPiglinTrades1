gamemode spectator @s
tag @s add bpt_spectating
scoreboard players set @s BPTSpectatorTime 100
summon marker ~ ~ ~ {Tags:["bpt_return_point"]}
ride @s mount @e[tag=bpt_return_point,limit=1]