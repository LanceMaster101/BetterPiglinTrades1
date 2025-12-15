execute at @a[scores={BPTAnimalDamage=1..}] at @e[type=sheep,distance=..20] run damage @e[type=sheep,limit=1,sort=nearest] 0 player_attack by @p
execute at @a[scores={BPTAnimalDamage=1..}] at @e[type=cow,distance=..20] run damage @e[type=cow,limit=1,sort=nearest] 0 player_attack by @p
execute at @a[scores={BPTAnimalDamage=1..}] at @e[type=chicken,distance=..20] run damage @e[type=chicken,limit=1,sort=nearest] 0 player_attack by @p
execute at @a[scores={BPTAnimalDamage=1..}] at @e[type=pig,distance=..20] run damage @e[type=pig,limit=1,sort=nearest] 0 player_attack by @p
scoreboard players set @a BPTAnimalDamage 0



