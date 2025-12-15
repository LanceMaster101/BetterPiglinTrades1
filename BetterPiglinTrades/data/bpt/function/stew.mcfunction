execute at @a[scores={BPTSuspiciousStew=1..}] run execute store result score @p RandomstewSelection run random value 1..7

effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=1}] nausea 15 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=2}] blindness 15 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=3}] poison 10 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=4}] weakness 30 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=5}] mining_fatigue 30 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=6}] slowness 30 0 false
effect give @a[scores={BPTSuspiciousStew=1..,RandomstewSelection=7..}] wither 5 0 false

scoreboard players set @a BPTSuspiciousStew 0