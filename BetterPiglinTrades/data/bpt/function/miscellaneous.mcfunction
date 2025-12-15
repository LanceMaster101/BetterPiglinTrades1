
# Clear blindness from players who have recently slept in bed
execute as @a[scores={BPTSleptInBed=1..}] run effect clear @s blindness
execute as @a[scores={BPTSlept=1..}] run effect clear @s blindness

# Enderman trade detection and execution for different block types
execute at @a[scores={BPTCryingObsidianPlaced=1..}] if entity @e[type=enderman,distance=..5,limit=1,sort=nearest,nbt=!{carriedBlockState:{Name:"minecraft:crying_obsidian"}},tag=!traded] run function bpt:endermantradecry
execute at @a[scores={BPTGildedBlackstonePlaced=1..}] if entity @e[type=enderman,distance=..5,limit=1,sort=nearest,nbt=!{carriedBlockState:{Name:"minecraft:gilded_blackstone"}},tag=!traded] run function bpt:endermantradegild
execute at @a[scores={BPTTNTPlaced=1..}] if entity @e[type=enderman,distance=..5,limit=1,sort=nearest,nbt=!{carriedBlockState:{Name:"minecraft:tnt"}},tag=!traded] run function bpt:endermantradetnt

# Jack-O-Lantern summoning and removal


# Reset scoreboard values for placed and broken items
scoreboard players set @a[scores={BPTTNTPlaced=1..}] BPTTNTPlaced 0
scoreboard players set @a[scores={BPTGildedBlackstonePlaced=1..}] BPTGildedBlackstonePlaced 0
scoreboard players set @a[scores={BPTCryingObsidianPlaced=1..}] BPTCryingObsidianPlaced 0

# Cleanup trades with Endermen
execute at @e[type=enderman,tag=traded] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace tnt
execute at @e[type=enderman,tag=traded] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace gilded_blackstone
execute at @e[type=enderman,tag=traded] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace crying_obsidian



execute if entity @a[tag=!recipes] run function bpt:recipes

execute at @a run experience add @a[nbt={equipment:{offhand:{id:"minecraft:glass_bottle",count:1}}},level=7..] -107 points
execute at @a[nbt={equipment:{offhand:{id:"minecraft:glass_bottle",count:1}}},level=7..] run playsound block.brewing_stand.brew block @a[distance=..10] ~ ~ ~ 1 2.0 1
item replace entity @a[nbt={equipment:{offhand:{id:"minecraft:glass_bottle",count:1}}},level=7..] weapon.offhand with experience_bottle
execute at @a[scores={xpmpbottlesused=1..}] at @e[type=experience_orb,limit=1,sort=nearest] run summon experience_orb ~ ~ ~ {Value:90}


scoreboard players set @a xpmpbottlesused 0




effect give @a[nbt={SelectedItem:{id:"minecraft:rabbit_foot",count:1}}] luck 2 0 true
effect give @a[nbt={equipment:{offhand:{id:"minecraft:rabbit_foot",count:1}}}] luck 2 0 true

effect give @a[nbt={SelectedItem:{id:"minecraft:stick"}}] haste 2 0 true
effect give @a[nbt={SelectedItem:{id:"minecraft:stick"}}] strength 2 0 true


execute as @e[type=creeper] run data modify entity @e[type=creeper,limit=1,sort=nearest] ExplosionRadius set value 3


execute if entity @a[scores={BPTHealth=5..12}] as @e[type=arrow] run data modify entity @s damage set value 1.0
execute if entity @a[scores={BPTHealth=..4}] as @e[type=arrow] run data modify entity @s damage set value 0.5

gamerule keepInventory true
execute at @a[scores={BPTDeaths=1..}] run setblock ~ ~ ~ barrel[facing=up]
execute at @a[scores={BPTDeaths=1..}] run setblock ~ ~1 ~ barrel[facing=up]
execute at @a[scores={BPTDeaths=1..}] run data modify block ~ ~ ~ Items set from entity @p[scores={BPTDeaths=1..}] Inventory
experience set @a[scores={BPTDeaths=1..}] 0 levels
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.0 from entity @p armor.head
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.1 from entity @p armor.chest
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.2 from entity @p armor.legs
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.3 from entity @p armor.feet
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.4 from entity @p inventory.18
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.5 from entity @p inventory.19
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.6 from entity @p inventory.20
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.7 from entity @p inventory.21
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.8 from entity @p inventory.22
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.9 from entity @p inventory.23
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.10 from entity @p inventory.24
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.11 from entity @p inventory.25
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.12 from entity @p inventory.26
execute at @a[scores={BPTDeaths=1..}] run item replace block ~ ~1 ~ container.13 from entity @p weapon.offhand
clear @a[scores={BPTDeaths=1..}] *
execute at @a[scores={BPTDeaths=1..}] run summon marker ~ ~ ~ {Tags:[deathmarker]}
execute at @e[tag=deathmarker] if block ~ ~ ~ barrel{Items:[]} run setblock ~ ~ ~ air
execute at @e[tag=deathmarker] if block ~ ~1 ~ barrel{Items:[]} run setblock ~ ~1 ~ air
execute at @e[tag=deathmarker] if block ~ ~ ~ air if block ~ ~1 ~ air run kill @e[tag=deathmarker,limit=1,sort=nearest,distance=..1]
scoreboard players set @a BPTDeaths 0

execute if score @p BPT30SecondTimer matches 1 run scoreboard players add @a[scores={Thirst=..3600}] BPTSaturated 20
execute if score @p BPT30SecondTimer matches 101 run scoreboard players add @a[scores={Thirst=..3000}] BPTSaturated 20
execute if score @p BPT30SecondTimer matches 201 run scoreboard players add @a[scores={Thirst=..2400}] BPTSaturated 20
execute if score @p BPT30SecondTimer matches 301 run scoreboard players add @a[scores={Thirst=..1800}] BPTSaturated 20
execute if score @p BPT30SecondTimer matches 501 run scoreboard players add @a[scores={Thirst=..600}] BPTSaturated 16

scoreboard players add @a[nbt=!{foodSaturationLevel:0f}] BPTSaturated 1
execute at @a[tag=woman] run scoreboard players add @p[tag=!woman,distance=..10] BPTSaturated 1
effect give @a[scores={BPTSaturated=160..}] regeneration 3 0 true
scoreboard players remove @a[scores={BPTSaturated=160..}] BPTSaturated 160



effect give @a hunger 2 0 true
effect give @a[nbt=!{foodSaturationLevel:0f},tag=woman] hunger 2 4 true
effect give @a[nbt=!{foodSaturationLevel:0f},tag=!woman] hunger 2 9 true


execute at @a[scores={BPTDiamondOreMined=1..}] run kill @e[type=experience_orb]
scoreboard players set @a BPTDiamondOreMined 0

execute if score Time DayTime matches 20 run effect give @a[scores={BPTSleptInBed=1..}] instant_health 1 1 true
execute if score Time DayTime matches 20 run scoreboard players add @a[scores={BPTSleptInBed=1..}] Thirst 480
execute if score Time DayTime matches 21 run scoreboard players set @a BPTSleptInBed 0
execute if score Time DayTime matches 23900.. run scoreboard players set @a BPTSleptInBed 0


execute at @e[type=blaze] if block ~ ~-2 ~ lava run effect give @e[type=blaze,limit=1,sort=nearest] levitation 2 1 true

effect give @e[type=stray,tag=!needsfireprot] fire_resistance infinite 0 true
effect give @e[type=bogged,tag=!needsfireprot] fire_resistance infinite 0 true
execute as @e[type=stray,tag=!needsfireprot] run data modify entity @s HasVisualFire set value 0b
execute as @e[type=bogged,tag=!needsfireprot] run data modify entity @s HasVisualFire set value 0b
tag @e[type=stray] add needsfireprot
tag @e[type=bogged] add needsfireprot


scoreboard players enable @a Spectator

# Start spectator mode
execute as @a[scores={Spectator=1..},tag=!bpt_spectating] at @s run function bpt:start_spectator

# End spectator mode
execute as @a[scores={BPTSpectatorTime=0},tag=bpt_spectating] at @s run function bpt:end_spectator

# Reset trigger only for people who used it
scoreboard players reset @a[scores={Spectator=1..}] Spectator

effect give @a[scores={BPTHornsUsed=1..}] bad_omen 15 0 true
scoreboard players set @a BPTHornsUsed 0



execute at @e[type=snowball] if entity @e[type=!arrow,type=!marker,type=!item,type=!snowball,type=!marker,type=!player,type=!snow_golem,distance=..2] run tag @e[type=snowball,limit=1,sort=nearest] add snowbam
execute at @e[tag=snowbam,type=snowball] run damage @e[type=!arrow,type=!marker,type=!item,type=!snowball,type=!marker,type=!player,distance=..2,type=!snow_golem,limit=1,sort=nearest] 1 player_attack by @e[type=snowball,limit=1,sort=nearest]
kill @e[tag=snowbam,type=snowball]

effect give @e[type=snow_golem,tag=!fireresist] fire_resistance infinite 0 true
effect give @e[type=snow_golem,tag=!fireresist] regeneration infinite 0 true
effect give @e[type=snow_golem,tag=!fireresist] resistance infinite 3 true
tag @e[type=snow_golem] add fireresist


execute if score @p BPT10SecondTimer matches 1 at @e[type=fox] run summon experience_orb ~ ~ ~


execute at @e[type=zombie] run effect give @a[distance=..3] nausea 5 0 false
execute at @e[type=zombie] run effect give @a[distance=..5] weakness 5 0 false

scoreboard players set Items Entities 0
execute as @e[type=item] run scoreboard players add Items Entities 1
execute at @a if score Items Entities matches 100.. run kill @e[type=item,limit=1,sort=random,distance=50..]

scoreboard players set Markers Entities 0
execute as @e[type=marker] run scoreboard players add Markers Entities 1
execute if score Markers Entities matches 50.. run kill @e[type=marker,limit=1,sort=random]

scoreboard players set Spiders Entities 0
execute as @e[type=spider] run scoreboard players add Spiders Entities 1
execute if score Spiders Entities matches 100.. run kill @e[type=spider,limit=1,sort=random]

scoreboard players set CaveSpiders Entities 0
execute as @e[type=cave_spider] run scoreboard players add CaveSpiders Entities 1
execute if score CaveSpiders Entities matches 100.. run kill @e[type=cave_spider,limit=1,sort=random]

scoreboard players set ExperienceOrbs Entities 0
execute as @e[type=experience_orb] run scoreboard players add ExperienceOrbs Entities 1
execute if score ExperienceOrbs Entities matches 100.. run kill @e[type=experience_orb,limit=1,sort=random]

execute at @a[nbt={Dimension:"minecraft:overworld"}] run execute store success score @p BPTSkyWard run clone ~ ~2 ~ ~ ~50 ~ ~0 250 ~0 masked normal
scoreboard players set @a[nbt=!{Dimension:"minecraft:overworld"}] BPTSkyWard 1
execute at @a run fill ~ 250 ~ ~ 300 ~ air
execute at @a anchored feet positioned ~ 250 ~ run kill @e[type=item,distance=..10]

scoreboard players set Raining BPTTracker 0
execute unless block 1 199 1 farmland[moisture=0] run scoreboard players set Raining BPTTracker 1

scoreboard players set SunnyDay BPTTracker 1
execute if entity @e[tag=weatherdetector,nbt={Fire:0s}] run scoreboard players set SunnyDay BPTTracker 0
execute at @e[tag=weatherdetector] run kill @e[type=item,distance=..10]

execute as @e[tag=jackward,type=marker] at @s unless block ~ ~ ~ jack_o_lantern run kill @s
execute as @e[tag=campfireward,type=marker] at @s unless block ~ ~ ~ campfire run kill @s
execute as @e[tag=dripstoneward,type=marker] at @s unless block ~ ~ ~ pointed_dripstone run kill @s

execute if entity @a[scores={BPTJackOLanternsPlaced=1..}] run function bpt:jackward
execute if entity @a[scores={BPTCampfiresPlaced=1..}] run function bpt:jackward
execute if entity @a[scores={BPTDripstonePlaced=1..}] run function bpt:jackward
execute if entity @a[scores={BPTBlueIcePlaced=1..}] run function bpt:jackward
execute if entity @e[tag=distantdripstoneward] run function bpt:jackward


scoreboard players enable @a Recipes
tag @a[scores={Recipes=1..}] remove recipes
scoreboard players set @a Recipes 0

execute if score @p BPT10SecondTimer matches 1 run function bpt:lapisbonuses