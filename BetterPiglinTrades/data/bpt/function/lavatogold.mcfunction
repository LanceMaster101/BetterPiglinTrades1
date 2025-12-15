execute at @e[nbt={Tags:[blueiceward]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 obsidian replace lava[level=0]

execute as @e[tag=blueiceward] store result score @s Random run random value 1..60
execute as @e[tag=blueiceward,scores={Random=1}] at @s if block ~ ~-2 ~ pointed_dripstone run fill ~ ~-3 ~ ~ ~-10 ~ water_cauldron[level=3] replace water_cauldron[level=2]
execute as @e[tag=blueiceward,scores={Random=1}] if block ~ ~-2 ~ pointed_dripstone run fill ~ ~-3 ~ ~ ~-10 ~ water_cauldron[level=2] replace water_cauldron[level=1]
execute as @e[tag=blueiceward,scores={Random=1}] if block ~ ~-2 ~ pointed_dripstone run fill ~ ~-3 ~ ~ ~-10 ~ water_cauldron[level=1] replace cauldron
execute as @e[tag=blueiceward,scores={Random=1}] if block ~ ~-1 ~ pointed_dripstone run fill ~ ~-2 ~ ~ ~-10 ~ water_cauldron[level=3] replace water_cauldron[level=2]
execute as @e[tag=blueiceward,scores={Random=1}] if block ~ ~-1 ~ pointed_dripstone run fill ~ ~-2 ~ ~ ~-10 ~ water_cauldron[level=2] replace water_cauldron[level=1]
execute as @e[tag=blueiceward,scores={Random=1}] if block ~ ~-1 ~ pointed_dripstone run fill ~ ~-2 ~ ~ ~-10 ~ water_cauldron[level=1] replace cauldron

##########========================================================
##########   DRIPSTONEWARD DRIP SYSTEM — IRON, GOLD, NETHER GOLD
##########========================================================

# ========== RANDOMIZE MAIN DRIP CYCLE (1..600) ==========
execute as @e[tag=dripstoneward] store result score @s Random run random value 1..600

# Prevent overlap — removes nearby excess markers
execute as @e[tag=dripstoneward,scores={Random=1},limit=1,sort=random] at @s run kill @e[tag=dripstoneward,scores={Random=2..},distance=..1.1]

# ========================================================
#   WATER DRIP → IRON SYSTEM
# ========================================================
# Layer 1–5 (drips down to first solid target)
# Layer -1
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ infested_stone run setblock ~ ~-1 ~ stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ stone run setblock ~ ~-1 ~ iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ infested_deepslate run setblock ~ ~-1 ~ deepslate
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ cobbled_deepslate run setblock ~ ~-1 ~ deepslate_iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ deepslate run setblock ~ ~-1 ~ deepslate_iron_ore

# Layer -2
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ infested_stone run setblock ~ ~-2 ~ stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ stone run setblock ~ ~-2 ~ iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ infested_deepslate run setblock ~ ~-2 ~ deepslate
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ cobbled_deepslate run setblock ~ ~-2 ~ deepslate_iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ deepslate run setblock ~ ~-2 ~ deepslate_iron_ore

# Layer -3
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ infested_stone run setblock ~ ~-3 ~ stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ stone run setblock ~ ~-3 ~ iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ infested_deepslate run setblock ~ ~-3 ~ deepslate
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ cobbled_deepslate run setblock ~ ~-3 ~ deepslate_iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ deepslate run setblock ~ ~-3 ~ deepslate_iron_ore

# Layer -4
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ infested_stone run setblock ~ ~-4 ~ stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ stone run setblock ~ ~-4 ~ iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ infested_deepslate run setblock ~ ~-4 ~ deepslate
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ cobbled_deepslate run setblock ~ ~-4 ~ deepslate_iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ deepslate run setblock ~ ~-4 ~ deepslate_iron_ore

# Layer -5
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air if block ~ ~-4 ~ #air if block ~ ~-5 ~ infested_stone run setblock ~ ~-5 ~ stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air if block ~ ~-4 ~ #air if block ~ ~-5 ~ stone run setblock ~ ~-5 ~ iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air if block ~ ~-4 ~ #air if block ~ ~-5 ~ infested_deepslate run setblock ~ ~-5 ~ deepslate
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air if block ~ ~-4 ~ #air if block ~ ~-5 ~ cobbled_deepslate run setblock ~ ~-5 ~ deepslate_iron_ore
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ water if block ~ ~-1 ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air if block ~ ~-4 ~ #air if block ~ ~-5 ~ deepslate run setblock ~ ~-5 ~ deepslate_iron_ore

# ========================================================
#   LAVA DRIP → GOLD SYSTEM
# ========================================================
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ gold_ore replace stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_gold_ore replace deepslate

execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air run fill ~ ~-2 ~ ~ ~-2 ~ gold_ore replace stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air run fill ~ ~-2 ~ ~ ~-2 ~ deepslate_gold_ore replace deepslate

execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air run fill ~ ~-3 ~ ~ ~-3 ~ gold_ore replace stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air run fill ~ ~-3 ~ ~ ~-3 ~ deepslate_gold_ore replace deepslate

execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run fill ~ ~-4 ~ ~ ~-4 ~ gold_ore replace stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run fill ~ ~-4 ~ ~ ~-4 ~ deepslate_gold_ore replace deepslate

execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run fill ~ ~-5 ~ ~ ~-5 ~ gold_ore replace stone
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run fill ~ ~-5 ~ ~ ~-5 ~ deepslate_gold_ore replace deepslate

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ copper_ore replace dirt
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ deepslate_copper_ore replace mud

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air run fill ~ ~-2 ~ ~ ~-2 ~ copper_ore replace dirt
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air run fill ~ ~-2 ~ ~ ~-2 ~ deepslate_copper_ore replace mud

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air run fill ~ ~-3 ~ ~ ~-3 ~ copper_ore replace dirt
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air run fill ~ ~-3 ~ ~ ~-3 ~ deepslate_copper_ore replace mud

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run fill ~ ~-4 ~ ~ ~-4 ~ copper_ore replace dirt
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run fill ~ ~-4 ~ ~ ~-4 ~ deepslate_copper_ore replace mud

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run fill ~ ~-5 ~ ~ ~-5 ~ copper_ore replace dirt
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run fill ~ ~-5 ~ ~ ~-5 ~ deepslate_copper_ore replace mud
# ========================================================
#   FASTER NETHERRACK → NETHER GOLD SYSTEM
# ========================================================

execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava run fill ~ ~-1 ~ ~ ~-1 ~ nether_gold_ore replace netherrack
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air run fill ~ ~-2 ~ ~ ~-2 ~ nether_gold_ore replace netherrack
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air run fill ~ ~-3 ~ ~ ~-3 ~ nether_gold_ore replace netherrack
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air run fill ~ ~-4 ~ ~ ~-4 ~ nether_gold_ore replace netherrack
execute as @e[tag=dripstoneward,scores={Random=1..2}] at @s if block ~ ~2 ~ lava if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air if block ~ ~-3 ~ #air if block ~ ~-4 ~ #air run fill ~ ~-5 ~ ~ ~-5 ~ nether_gold_ore replace netherrack

# ========================================================
#   DRIPSTONE EXPANSION (spreads marker generation)
# ========================================================
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~1 ~ ~ pointed_dripstone run summon marker ~1 ~ ~ {Tags:[dripstoneward]}
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~-1 ~ ~ pointed_dripstone run summon marker ~-1 ~ ~ {Tags:[dripstoneward]}
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~ ~1 pointed_dripstone run summon marker ~ ~ ~1 {Tags:[dripstoneward]}
execute as @e[tag=dripstoneward,scores={Random=1}] at @s if block ~ ~ ~-1 pointed_dripstone run summon marker ~ ~ ~-1 {Tags:[dripstoneward]}



execute as @e[nbt={Tags:[blueiceward]}] at @s unless block ~ ~ ~ blue_ice run kill @s