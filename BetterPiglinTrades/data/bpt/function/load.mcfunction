scoreboard objectives add BPTRandom dummy
scoreboard objectives add BPTRange dummy
scoreboard objectives add BPT1SecondTimer dummy
scoreboard objectives add BPTEnderGift dummy
scoreboard objectives add BPTSuccess dummy
scoreboard objectives add BPTBlueIcePlaced used:blue_ice
scoreboard objectives add BPTCakeCrafted crafted:cake
scoreboard objectives add xpmpbottlesused used:experience_bottle
scoreboard objectives add BPT10SecondTimer dummy
scoreboard objectives add BPTSuspiciousStew used:suspicious_stew
scoreboard objectives add BPTRandomStew dummy
scoreboard objectives add RandomstewSelection dummy
scoreboard objectives add xpmpbottlesused used:experience_bottle
scoreboard objectives add BPTRandomJob dummy
scoreboard objectives add BPT30SecondTimer dummy
scoreboard objectives add BPTFoodLevel food
scoreboard objectives add BPT60SecondTimer dummy
scoreboard objectives add BPT600SecondTimer dummy
scoreboard objectives add VillagerEgg killed:villager
scoreboard objectives add BPTStructureFinder dummy
scoreboard objectives add BPTHealth health
scoreboard objectives add BPTSlept custom:sleep_in_bed
gamerule random_tick_speed 5
scoreboard objectives add BPTDeaths deathCount
scoreboard objectives add BPTSlept custom:sleep_in_bed
scoreboard objectives add BPTJackOLanternsPlaced used:jack_o_lantern
scoreboard objectives add BPTTNTPlaced used:tnt
scoreboard objectives add BPTGildedBlackstonePlaced used:gilded_blackstone
scoreboard objectives add BPTAnimalDamage custom:damage_dealt
scoreboard objectives add BPTDiamondOreMined mined:diamond_ore
scoreboard objectives add BPTSleptInBed custom:sleep_in_bed
scoreboard objectives add DayTime dummy
scoreboard objectives add BPTSpiderHeight dummy
scoreboard objectives add BPTDrownedHeight dummy
scoreboard objectives add BPTNetherHeight dummy
scoreboard objectives add Spectator trigger
scoreboard objectives add BPTSpectatorTime dummy
scoreboard objectives add BPTCryingObsidianPlaced used:crying_obsidian
scoreboard objectives add BPTHornsUsed used:goat_horn
scoreboard objectives add BPTJackOLanternsBroken mined:jack_o_lantern
scoreboard objectives add BPTPotatosReplace dummy
scoreboard objectives add BPTSuccess dummy
scoreboard objectives add BPTSaturated dummy
scoreboard objectives add VillagerReset trigger
scoreboard objectives add Random dummy
scoreboard objectives add RandomX dummy
scoreboard objectives add RandomY dummy
scoreboard objectives add RandomZ dummy
scoreboard objectives add MarkerPosX dummy
scoreboard objectives add MarkerPosY dummy
scoreboard objectives add MarkerPosZ dummy
scoreboard objectives add Entities dummy
scoreboard objectives add BPTSpawnerPlaced used:spawner
scoreboard objectives add BPTSpawnerBroken mined:spawner
scoreboard objectives add BPTIronGolemIron dummy
scoreboard objectives add BPTVillagerNumber dummy
scoreboard objectives add Thirst dummy
scoreboard objectives add BPTThirstJump custom:jump
scoreboard objectives add BPTThirstSprint custom:sprint_one_cm
scoreboard objectives add BPTThirstAttack custom:damage_dealt
scoreboard objectives add BPTThirstHit custom:damage_taken
scoreboard objectives add BPTPotionsUsed used:potion
scoreboard objectives add BPTHoneyBottlesUsed used:honey_bottle
scoreboard objectives add BPTMilkBucketsUsed used:milk_bucket
scoreboard objectives add BPTCrouchDrink custom:sneak_time
scoreboard objectives add BPTSkyWard dummy
scoreboard objectives add BPTTracker dummy
scoreboard objectives add BPTDamageTakenCaveSpider custom:damage_taken
scoreboard objectives add BPTCampfiresPlaced used:campfire
scoreboard objectives add BPTCaveSpiderNumber dummy
scoreboard objectives add BPTBrownEggUsedFireball used:brown_egg
scoreboard objectives add BPTWitherHealth dummy
scoreboard objectives add BPTSpiderAngry dummy
scoreboard objectives add BPTDripstonePlaced used:pointed_dripstone
scoreboard objectives add Recipes trigger
scoreboard objectives add vel_y dummy
scoreboard objectives add BPTSprinting custom:sprint_one_cm
scoreboard objectives add BPTDamageTakenAmethyst custom:damage_taken


team add Skeletons
team add Piglins
team add Witch
team add Drowned

team modify Drowned friendlyFire false
team modify Skeletons friendlyFire false

gamerule natural_health_regeneration false
team add Invisible
team modify Invisible seeFriendlyInvisibles false

setblock 1 199 1 farmland
setblock 1 200 1 wheat
kill @e[tag=weatherdetector]
summon zombie 1 200 1 {Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:[myspawn,weatherdetector],PersistenceRequired:1b,CustomName:"weatherdetector"}
execute at @e[tag=weatherdetector] run fillbiome ~-5 ~-5 ~-5 ~5 ~20 ~5 plains

tag @a remove recipes

tag @e remove attributefixed