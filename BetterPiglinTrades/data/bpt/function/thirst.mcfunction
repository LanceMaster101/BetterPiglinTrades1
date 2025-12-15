scoreboard players add @a Thirst 1
execute at @a[nbt={Dimension:"minecraft:overworld"}] if block ~ ~-1 ~ sand run scoreboard players add @p Thirst 1
scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] Thirst 2
execute if score Raining BPTTracker matches 1 run scoreboard players remove @a[scores={BPTSkyWard=0}] Thirst 2
execute if score SunnyDay BPTTracker matches 1 run scoreboard players add @a[scores={BPTSkyWard=0}] Thirst 1

scoreboard players add @a[scores={BPTThirstAttack=1..}] Thirst 1
scoreboard players add @a[scores={BPTThirstHit=1..}] Thirst 1
scoreboard players add @a[scores={BPTThirstJump=1..}] Thirst 1
scoreboard players add @a[scores={BPTThirstSprint=1..}] Thirst 1

scoreboard players reset @a BPTThirstAttack
scoreboard players reset @a BPTThirstHit
scoreboard players reset @a BPTThirstJump
scoreboard players reset @a BPTThirstSprint

scoreboard players remove @a[team=Piglins] Thirst 2

scoreboard players remove @a[scores={BPTPotionsUsed=1..}] Thirst 1200
scoreboard players remove @a[scores={BPTHoneyBottlesUsed=1..}] Thirst 300
scoreboard players remove @a[scores={BPTMilkBucketsUsed=1..}] Thirst 600

tag @a[scores={BPTPotionsUsed=1..}] add drank
tag @a[scores={BPTHoneyBottlesUsed=1..}] add drank
tag @a[scores={BPTMilkBucketsUsed=1..}] add drank

scoreboard players reset @a BPTPotionsUsed
scoreboard players reset @a BPTHoneyBottlesUsed
scoreboard players reset @a BPTMilkBucketsUsed

tellraw @a[scores={Thirst=600..1199},tag=drank] {"text": "You could still use a Drink","color": "#0008ff"}
tellraw @a[scores={Thirst=1200..1799},tag=drank] {"text": "You are still a bit Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=1800..2399},tag=drank] {"text": "You are still Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=2400..2999},tag=drank] {"text": "You are still very Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=3000..},tag=drank] {"text": "You are still EXTREMELY Thirsty!","color": "#0008ff"}

tag @a remove drank

scoreboard players remove @a[nbt={equipment:{offhand:{id:"minecraft:water_bucket",count:1}}}] Thirst 3600
item replace entity @a[nbt={equipment:{offhand:{id:"minecraft:water_bucket",count:1}}}] weapon.offhand with bucket

execute at @a if block ~ ~1 ~ water run scoreboard players remove @p Thirst 200
execute at @a[scores={BPTCrouchDrink=1..}] if block ~ ~ ~ water run scoreboard players remove @p Thirst 200

scoreboard players reset @a BPTCrouchDrink

tag @a add Quenched
tag @a[scores={Thirst=1..}] remove Quenched
scoreboard players set @a[tag=Quenched] Thirst 0



tellraw @a[tag=Quenched,tag=Drink] {"text": "You are Refreshed!","color": "#0008ff"}
tellraw @a[scores={Thirst=600..},tag=!Drink] {"text": "You could use a Drink","color": "#0008ff"}
tellraw @a[scores={Thirst=1200..},tag=!LilThirsty] {"text": "You are A Bit Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=1800..},tag=!Thirsty] {"text": "You are Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=2400..},tag=!VeryThirsty] {"text": "You are Very Thirsty","color": "#0008ff"}
tellraw @a[scores={Thirst=3000..},tag=!ExtremelyThirsty] {"text": "You are EXTREMELY Thirsty!","color": "#0008ff"}
tellraw @a[scores={Thirst=3605..}] {"text": "You are Dehydrated!","color": "#0008ff"}


tag @a[tag=Quenched] remove Drink
tag @a remove LilThirsty
tag @a remove Thirsty
tag @a remove VeryThirsty
tag @a remove ExtremelyThirsty
tag @a[scores={Thirst=600..}] add Drink
tag @a[scores={Thirst=1200..}] add LilThirsty
tag @a[scores={Thirst=1800..}] add Thirsty
tag @a[scores={Thirst=2400..}] add VeryThirsty
tag @a[scores={Thirst=3000..}] add ExtremelyThirsty

effect give @a[tag=VeryThirsty] slowness 2 0 true
effect give @a[tag=ExtremelyThirsty] weakness 2 0 true
effect give @a[tag=ExtremelyThirsty] mining_fatigue 2 0 true

execute at @a[scores={Thirst=3605..}] run damage @p 1 dry_out
scoreboard players set @a[scores={Thirst=3605..}] Thirst 3600