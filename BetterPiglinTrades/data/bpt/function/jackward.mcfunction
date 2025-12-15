execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^.5 jack_o_lantern run summon marker ^ ^1.5 ^.5 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^1 jack_o_lantern run summon marker ^ ^1.5 ^1 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^1.5 jack_o_lantern run summon marker ^ ^1.5 ^1.5 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^2 jack_o_lantern run summon marker ^ ^1.5 ^2 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^2.5 jack_o_lantern run summon marker ^ ^1.5 ^2.5 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^3 jack_o_lantern run summon marker ^ ^1.5 ^3 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^3.5 jack_o_lantern run summon marker ^ ^1.5 ^3.5 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^4 jack_o_lantern run summon marker ^ ^1.5 ^4 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^4.5 jack_o_lantern run summon marker ^ ^1.5 ^4.5 {Tags:[jackward]}
execute at @a[scores={BPTJackOLanternsPlaced=1..}] if block ^ ^1.5 ^5 jack_o_lantern run summon marker ^ ^1.5 ^5 {Tags:[jackward]}

execute if entity @e[tag=jackward,type=marker,tag=!fullytagged] run scoreboard players set @a BPTJackOLanternsPlaced 0
tag @e[type=marker,tag=jackward] add fullytagged

execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^.5 campfire run summon marker ^ ^1.5 ^.5 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^1 campfire run summon marker ^ ^1.5 ^1 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^1.5 campfire run summon marker ^ ^1.5 ^1.5 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^2 campfire run summon marker ^ ^1.5 ^2 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^2.5 campfire run summon marker ^ ^1.5 ^2.5 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^3 campfire run summon marker ^ ^1.5 ^3 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^3.5 campfire run summon marker ^ ^1.5 ^3.5 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^4 campfire run summon marker ^ ^1.5 ^4 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^4.5 campfire run summon marker ^ ^1.5 ^4.5 {Tags:[campfireward]}
execute at @a[scores={BPTCampfiresPlaced=1..}] if block ^ ^1.5 ^5 campfire run summon marker ^ ^1.5 ^5 {Tags:[campfireward]}

execute if entity @e[tag=campfireward,type=marker,tag=!fullytagged] run scoreboard players set @a BPTCampfiresPlaced 0
tag @e[type=marker,tag=campfireward] add fullytagged

execute at @a[scores={BPTDripstonePlaced=1..}] unless entity @e[tag=maybedripstoneward] run summon marker ^ ^1.5 ^5 {Tags:[distantdripstoneward]}
execute at @a[scores={BPTDripstonePlaced=1..}] run summon marker ^ ^1.5 ^ {Tags:[maybedripstoneward]}
execute as @e[tag=maybedripstoneward] at @s run tp @s ^ ^ ^.5 facing entity @e[tag=distantdripstoneward,limit=1,sort=nearest]
execute at @e[tag=maybedripstoneward] if block ~ ~ ~ pointed_dripstone run summon marker ~ ~ ~ {Tags:[dripstoneward]}
execute at @e[tag=maybedripstoneward] if block ~ ~-1 ~ pointed_dripstone run summon marker ~ ~-1 ~ {Tags:[dripstoneward]}
execute at @e[tag=maybedripstoneward] if block ~ ~1 ~ pointed_dripstone run summon marker ~ ~1 ~ {Tags:[dripstoneward]}
execute as @e[tag=dripstoneward] at @s unless block ~ ~.4 ~ pointed_dripstone run tp ~ ~-.1 ~
execute as @e[tag=dripstoneward] at @s unless block ~ ~-.4 ~ pointed_dripstone run tp ~ ~.1 ~
execute as @e[tag=dripstoneward] at @s unless block ~.4 ~ ~ pointed_dripstone run tp ~-.1 ~ ~
execute as @e[tag=dripstoneward] at @s unless block ~-.4 ~ ~ pointed_dripstone run tp ~.1 ~ ~
execute as @e[tag=dripstoneward] at @s unless block ~ ~ ~.4 pointed_dripstone run tp ~ ~ ~-.1
execute as @e[tag=dripstoneward] at @s unless block ~ ~ ~-.4 pointed_dripstone run tp ~ ~ ~.1


execute as @e[tag=maybedripstoneward] at @s if entity @e[tag=distantdripstoneward,type=marker,distance=..1] run kill @s
execute as @e[tag=distantdripstoneward] unless entity @e[tag=maybedripstoneward] run kill @s

scoreboard players remove @a[scores={BPTDripstonePlaced=1..}] BPTDripstonePlaced 1

execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^.5 blue_ice run summon marker ^ ^1.5 ^.5 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^1 blue_ice run summon marker ^ ^1.5 ^1 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^1.5 blue_ice run summon marker ^ ^1.5 ^1.5 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^2 blue_ice run summon marker ^ ^1.5 ^2 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^2.5 blue_ice run summon marker ^ ^1.5 ^2.5 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^3 blue_ice run summon marker ^ ^1.5 ^3 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^3.5 blue_ice run summon marker ^ ^1.5 ^3.5 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^4 blue_ice run summon marker ^ ^1.5 ^4 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^4.5 blue_ice run summon marker ^ ^1.5 ^4.5 {Tags:[blueiceward]}
execute at @a[scores={BPTBlueIcePlaced=1..}] if block ^ ^1.5 ^5 blue_ice run summon marker ^ ^1.5 ^5 {Tags:[blueiceward]}

execute if entity @e[tag=blueiceward,type=marker,tag=!fullytagged] run scoreboard players set @a BPTBlueIcePlaced 0
tag @e[type=marker,tag=blueiceward] add fullytagged