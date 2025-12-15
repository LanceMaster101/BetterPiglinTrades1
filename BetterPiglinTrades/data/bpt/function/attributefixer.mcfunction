execute as @e[tag=!attributefixed,type=chicken] run attribute @s max_health base set 10
execute as @e[tag=!attributefixed,type=chicken] run data modify entity @s Health set value 10f
execute as @e[tag=!attributefixed,type=chicken] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=chicken] run attribute @s tempt_range base set 25

execute as @e[tag=!attributefixed,type=cow] run attribute @s max_health base set 30
execute as @e[tag=!attributefixed,type=cow] run data modify entity @s Health set value 30f
execute as @e[tag=!attributefixed,type=cow] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=cow] run attribute @s tempt_range base set 25

execute as @e[tag=!attributefixed,type=pig] run attribute @s max_health base set 20
execute as @e[tag=!attributefixed,type=pig] run data modify entity @s Health set value 20f
execute as @e[tag=!attributefixed,type=pig] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=pig] run attribute @s tempt_range base set 25

execute as @e[tag=!attributefixed,type=sheep] run attribute @s max_health base set 20
execute as @e[tag=!attributefixed,type=sheep] run data modify entity @s Health set value 20f
execute as @e[tag=!attributefixed,type=sheep] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=sheep] run attribute @s tempt_range base set 25

execute as @e[tag=!attributefixed,type=zombie] run attribute @s max_health base set 30
execute as @e[tag=!attributefixed,type=zombie] run data modify entity @s Health set value 30f
execute as @e[tag=!attributefixed,type=zombie] run attribute @s attack_damage base set 4
execute as @e[tag=!attributefixed,type=zombie] run attribute @s knockback_resistance base set .5
execute as @e[tag=!attributefixed,type=zombie] run attribute @s movement_speed base set .25

execute as @e[tag=!attributefixed,type=drowned] run attribute @s max_health base set 30
execute as @e[tag=!attributefixed,type=drowned] run data modify entity @s Health set value 30f
execute as @e[tag=!attributefixed,type=drowned] run attribute @s attack_damage base set 4
execute as @e[tag=!attributefixed,type=drowned] run attribute @s knockback_resistance base set .5
execute as @e[tag=!attributefixed,type=drowned] run attribute @s movement_speed base set .25
execute as @e[tag=!attributefixed,type=drowned] run attribute @s water_movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=husk] run attribute @s max_health base set 30
execute as @e[tag=!attributefixed,type=husk] run data modify entity @s Health set value 30f
execute as @e[tag=!attributefixed,type=husk] run attribute @s attack_damage base set 4
execute as @e[tag=!attributefixed,type=husk] run attribute @s knockback_resistance base set .5
execute as @e[tag=!attributefixed,type=husk] run attribute @s movement_speed base set .25

execute as @e[tag=!attributefixed,type=wither_skeleton] run attribute @s attack_damage base set 6
execute as @e[tag=!attributefixed,type=wither_skeleton] run attribute @s max_health base set 40
execute as @e[tag=!attributefixed,type=wither_skeleton] run data modify entity @s Health set value 40f
execute as @e[tag=!attributefixed,type=wither_skeleton] run attribute @s knockback_resistance base set .5
execute as @e[tag=!attributefixed,type=wither_skeleton] run attribute @s movement_speed base set .3
execute as @e[tag=!attributefixed,type=wither_skeleton] run attribute @s movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=skeleton] run attribute @s movement_efficiency base set 1
execute as @e[tag=!attributefixed,type=skeleton] run attribute @s movement_speed base set .4

execute as @e[tag=!attributefixed,type=spider] run attribute @s attack_damage base set 4
execute as @e[tag=!attributefixed,type=spider] run attribute @s max_health base set 30
execute as @e[tag=!attributefixed,type=spider] run data modify entity @s Health set value 30f
execute as @e[tag=!attributefixed,type=spider] run attribute @s knockback_resistance base set .5
execute as @e[tag=!attributefixed,type=spider] run attribute @s movement_speed base set .3
execute as @e[tag=!attributefixed,type=spider] run attribute @s movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=cave_spider] run attribute @s attack_damage base set 1
execute as @e[tag=!attributefixed,type=cave_spider] run attribute @s max_health base set 16
execute as @e[tag=!attributefixed,type=cave_spider] run data modify entity @s Health set value 16f
execute as @e[tag=!attributefixed,type=cave_spider] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=cave_spider] run attribute @s movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=pillager] run attribute @s max_health base set 16
execute as @e[tag=!attributefixed,type=pillager] run data modify entity @s Health set value 16f
execute as @e[tag=!attributefixed,type=pillager] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=pillager] run attribute @s water_movement_efficiency base set .5
execute as @e[tag=!attributefixed,type=pillager] run attribute @s scale base set .95

execute as @e[tag=!attributefixed,type=villager] run attribute @s max_health base set 16
execute as @e[tag=!attributefixed,type=villager] run data modify entity @s Health set value 16f
execute as @e[tag=!attributefixed,type=villager] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=villager] run attribute @s water_movement_efficiency base set .5
execute as @e[tag=!attributefixed,type=villager] run attribute @s scale base set .85

execute as @e[tag=!attributefixed,type=witch] run attribute @s max_health base set 16
execute as @e[tag=!attributefixed,type=witch] run data modify entity @s Health set value 16f
execute as @e[tag=!attributefixed,type=witch] run attribute @s movement_speed base set .4
execute as @e[tag=!attributefixed,type=witch] run attribute @s water_movement_efficiency base set .5
execute as @e[tag=!attributefixed,type=witch] run attribute @s scale base set .9

execute as @e[tag=!attributefixed,type=salmon] run attribute @s max_health base set 6
execute as @e[tag=!attributefixed,type=salmon] run data modify entity @s Health set value 6f
execute as @e[tag=!attributefixed,type=salmon] run attribute @s movement_speed base set 1
execute as @e[tag=!attributefixed,type=salmon] run attribute @s water_movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=cod] run attribute @s max_health base set 6
execute as @e[tag=!attributefixed,type=cod] run data modify entity @s Health set value 6f
execute as @e[tag=!attributefixed,type=cod] run attribute @s movement_speed base set 1
execute as @e[tag=!attributefixed,type=cod] run attribute @s water_movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=tropical_fish] run attribute @s max_health base set 6
execute as @e[tag=!attributefixed,type=tropical_fish] run data modify entity @s Health set value 6f
execute as @e[tag=!attributefixed,type=tropical_fish] run attribute @s movement_speed base set 1
execute as @e[tag=!attributefixed,type=tropical_fish] run attribute @s water_movement_efficiency base set 1

execute as @e[tag=!attributefixed,type=wither] run attribute @s max_health base set 600
execute as @e[tag=!attributefixed,type=wither] run data modify entity @s Health set value 600f
execute as @e[tag=!attributefixed,type=wither] run attribute @s movement_speed base set .8
execute as @e[tag=!attributefixed,type=wither] run attribute @s knockback_resistance base set 1
execute as @e[tag=!attributefixed,type=wither] run attribute @s attack_knockback base set 5
execute as @e[tag=!attributefixed,type=wither] run attribute @s attack_damage base set 12



tag @e add attributefixed