execute at @r store success score @p BPTSuccess run clear @p apple[!food={nutrition:2,saturation:3}] 1
give @a[scores={BPTSuccess=1..}] apple[food={nutrition:2,saturation:3}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p baked_potato[!food={nutrition:5,saturation:3}] 1
give @a[scores={BPTSuccess=1..}] baked_potato[food={nutrition:5,saturation:3}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p beetroot[!food={nutrition:1,saturation:2},!consumable={consume_seconds:1}] 1
give @a[scores={BPTSuccess=1..}] beetroot[food={nutrition:1,saturation:2},consumable={consume_seconds:1}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p beetroot_soup[!food={nutrition:8,saturation:8,using_converts_to:{id:"minecraft:bowl"}}] 1
give @a[scores={BPTSuccess=1..}] beetroot_soup[food={nutrition:8,saturation:8,using_converts_to:{id:"minecraft:bowl"}},max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p bread[!food={nutrition:4,saturation:2}] 1
give @a[scores={BPTSuccess=1..}] bread[food={nutrition:4,saturation:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p carrot[!food={nutrition:1,saturation:3},!consumable={consume_seconds:1}] 1
give @a[scores={BPTSuccess=1..}] carrot[food={nutrition:1,saturation:3},consumable={consume_seconds:1}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p chorus_fruit[!food={nutrition:2,saturation:3}] 1
give @a[scores={BPTSuccess=1..}] chorus_fruit[food={nutrition:2,saturation:3}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p popped_chorus_fruit[!food={nutrition:3,saturation:5}] 1
give @a[scores={BPTSuccess=1..}] popped_chorus_fruit[food={nutrition:3,saturation:5}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_chicken[!food={nutrition:6,saturation:2}] 1
give @a[scores={BPTSuccess=1..}] cooked_chicken[food={nutrition:6,saturation:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_cod[!food={nutrition:4,saturation:2}] 1
give @a[scores={BPTSuccess=1..}] cooked_cod[food={nutrition:4,saturation:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_mutton[!food={nutrition:8,saturation:2}] 1
give @a[scores={BPTSuccess=1..}] cooked_mutton[food={nutrition:8,saturation:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_porkchop[!food={nutrition:7,saturation:5},!consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] cooked_porkchop[food={nutrition:7,saturation:5},consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_rabbit[!food={nutrition:2,saturation:1},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] cooked_rabbit[food={nutrition:2,saturation:1},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_salmon[!food={nutrition:4,saturation:4}] 1
give @a[scores={BPTSuccess=1..}] cooked_salmon[food={nutrition:4,saturation:4}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cookie[!food={nutrition:2,saturation:1},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] cookie[food={nutrition:2,saturation:1},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p dried_kelp[!food={nutrition:1,saturation:4},!consumable={consume_seconds:1}] 1
give @a[scores={BPTSuccess=1..}] dried_kelp[food={nutrition:1,saturation:4},consumable={consume_seconds:1}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p kelp[!food={nutrition:1,saturation:2},!consumable={consume_seconds:2}] 1
give @a[scores={BPTSuccess=1..}] kelp[food={nutrition:1,saturation:2},consumable={consume_seconds:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p enchanted_golden_apple[!food={nutrition:2,saturation:8,can_always_eat:true},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:regeneration,duration:600,amplifier:1},{id:absorption,duration:600,amplifier:3},{id:"fire_resistance",duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] enchanted_golden_apple[food={nutrition:2,saturation:8,can_always_eat:true},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:regeneration,duration:600,amplifier:1},{id:absorption,duration:600,amplifier:3},{id:"fire_resistance",duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p golden_apple[!food={nutrition:2,saturation:6,can_always_eat:true},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:regeneration,duration:600},{id:absorption,duration:600,amplifier:1},{id:"fire_resistance",duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] golden_apple[food={nutrition:2,saturation:6,can_always_eat:true},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:regeneration,duration:600},{id:absorption,duration:600},{id:"fire_resistance",duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p glow_berries[!food={nutrition:1,saturation:2},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200},{id:"glowing",duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] glow_berries[food={nutrition:1,saturation:2},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200},{id:"glowing",duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p golden_carrot[!food={nutrition:2,saturation:20,can_always_eat:true}] 1
give @a[scores={BPTSuccess=1..}] golden_carrot[food={nutrition:2,saturation:20,can_always_eat:true}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p honey_bottle[!food={nutrition:3,saturation:3},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]},{type:"remove_effects",effects:poison}]}] 1
give @a[scores={BPTSuccess=1..}] honey_bottle[food={nutrition:3,saturation:3},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]},{type:"remove_effects",effects:poison}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p melon_slice[!food={nutrition:1,saturation:3},!consumable={consume_seconds:2}] 1
give @a[scores={BPTSuccess=1..}] melon_slice[food={nutrition:1,saturation:3},consumable={consume_seconds:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p mushroom_stew[!food={nutrition:6,saturation:6,using_converts_to:{id:"minecraft:bowl"}}] 1
give @a[scores={BPTSuccess=1..}] mushroom_stew[food={nutrition:6,saturation:6,using_converts_to:{id:"minecraft:bowl"}},max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p potato[!food={nutrition:2,saturation:2}] 1
give @a[scores={BPTSuccess=1..}] potato[food={nutrition:2,saturation:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p pumpkin_pie[!food={nutrition:7,saturation:5},!consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
give @a[scores={BPTSuccess=1..}] pumpkin_pie[food={nutrition:7,saturation:5},consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p rabbit_stew[!food={nutrition:20,using_converts_to:{id:"minecraft:bowl"},saturation:10},!max_stack_size=64] 1
give @a[scores={BPTSuccess=1..}] rabbit_stew[food={nutrition:20,using_converts_to:{id:"minecraft:bowl"},saturation:10},max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p beef[!food={nutrition:4,saturation:0},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
give @a[scores={BPTSuccess=1..}] beef[food={nutrition:4,saturation:0},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p chicken[!food={nutrition:3,saturation:0},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.5}]}] 1
give @a[scores={BPTSuccess=1..}] chicken[food={nutrition:3,saturation:0},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.5}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cod[!food={nutrition:2,saturation:0}] 1
give @a[scores={BPTSuccess=1..}] cod[food={nutrition:2,saturation:0}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p tropical_fish[!food={nutrition:3,saturation:3}] 1
give @a[scores={BPTSuccess=1..}] tropical_fish[food={nutrition:3,saturation:3}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p mutton[!food={nutrition:4,saturation:0},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
give @a[scores={BPTSuccess=1..}] mutton[food={nutrition:4,saturation:0},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p porkchop[!food={nutrition:2,saturation:0}] 1
give @a[scores={BPTSuccess=1..}] porkchop[food={nutrition:2,saturation:0}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p rabbit_hide[!food={nutrition:2,saturation:0}] 1
give @a[scores={BPTSuccess=1..}] rabbit_hide[food={nutrition:2,saturation:0}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p rabbit[!food={nutrition:4,saturation:0},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]},{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
give @a[scores={BPTSuccess=1..}] rabbit[food={nutrition:4,saturation:0},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:600},{id:haste,duration:600}]},{type:apply_effects,effects:[{id:poison,duration:100}],probability:.2}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p salmon[!food={nutrition:2,saturation:1},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.1}]}] 1
give @a[scores={BPTSuccess=1..}] salmon[food={nutrition:2,saturation:1},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}],probability:.1}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p rotten_flesh[!food={nutrition:3,saturation:0},!consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:nausea,duration:300}]}]}] 1
give @a[scores={BPTSuccess=1..}] rotten_flesh[food={nutrition:3,saturation:0},consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:nausea,duration:300}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p spider_eye[!food={nutrition:2,saturation:0},!consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}]}]}] 1
give @a[scores={BPTSuccess=1..}] spider_eye[food={nutrition:2,saturation:0},consumable={consume_seconds:2,on_consume_effects:[{type:apply_effects,effects:[{id:poison,duration:100}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cooked_beef[!food={nutrition:10,saturation:0}] 1
give @a[scores={BPTSuccess=1..}] cooked_beef[food={nutrition:10,saturation:0}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p sweet_berries[!food={nutrition:1,saturation:2},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200}]}]}] 1
give @a[scores={BPTSuccess=1..}] sweet_berries[food={nutrition:1,saturation:2},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p sugar[!food={nutrition:1,saturation:0},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200}]}]}] 1
give @a[scores={BPTSuccess=1..}] sugar[food={nutrition:1,saturation:0},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:200},{id:haste,duration:200}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cocoa_beans[!food={nutrition:1,saturation:1},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:100},{id:haste,duration:100}]}]}] 1
give @a[scores={BPTSuccess=1..}] cocoa_beans[food={nutrition:1,saturation:1},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:100},{id:haste,duration:100}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p leather[!food={nutrition:2,saturation:0},!consumable={consume_seconds:5}] 1
give @a[scores={BPTSuccess=1..}] leather[food={nutrition:2,saturation:0},consumable={consume_seconds:5}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cactus_flower[!food={nutrition:1,saturation:2},!consumable={consume_seconds:1}] 1
give @a[scores={BPTSuccess=1..}] cactus_flower[food={nutrition:1,saturation:2},consumable={consume_seconds:1}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p phantom_membrane[!food={nutrition:2,saturation:0},!consumable={consume_seconds:1}] 1
give @a[scores={BPTSuccess=1..}] phantom_membrane[food={nutrition:2,saturation:0},consumable={consume_seconds:1}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p pitcher_plant[!food={nutrition:6,saturation:8},!consumable={consume_seconds:2}] 1
give @a[scores={BPTSuccess=1..}] pitcher_plant[food={nutrition:6,saturation:8},consumable={consume_seconds:2}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p potion[!consumable={consume_seconds:1,animation:"drink",sound:"entity.generic.drink",has_consume_particles:false},potion_contents=water] 1
give @a[scores={BPTSuccess=1..}] potion[consumable={consume_seconds:1,animation:"drink",sound:"entity.generic.drink",has_consume_particles:false},potion_contents=water,max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p rabbit_foot[!food={nutrition:1,saturation:1},!consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:luck,duration:600,amplifier:1}]}]}] 1
give @a[scores={BPTSuccess=1..}] rabbit_foot[food={nutrition:1,saturation:1},consumable={consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:luck,duration:600,amplifier:1}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p cake[!food={nutrition:14,saturation:3},!consumable={consume_seconds:4}] 1
give @a[scores={BPTSuccess=1..}] cake[food={nutrition:14,saturation:3},consumable={consume_seconds:4},max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p suspicious_stew[!food={nutrition:6,saturation:0,using_converts_to:{id:"minecraft:bowl"}}] 1
give @a[scores={BPTSuccess=1..}] suspicious_stew[food={nutrition:6,saturation:0,using_converts_to:{id:"minecraft:bowl"}},max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p totem_of_undying[max_stack_size=1] 1
give @a[scores={BPTSuccess=1..}] totem_of_undying[max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p brown_egg[max_stack_size=16] 1
give @a[scores={BPTSuccess=1..}] brown_egg[max_stack_size=64] 1
scoreboard players set @a BPTSuccess 0

execute at @r store success score @p BPTSuccess run clear @p pumpkin[!food={nutrition:4,saturation:3},!consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:nausea,duration:600,amplifier:0}]}]}] 1
give @a[scores={BPTSuccess=1..}] pumpkin[food={nutrition:4,saturation:3},consumable={consume_seconds:3,on_consume_effects:[{type:apply_effects,effects:[{id:nausea,duration:600,amplifier:0}]}]}] 1
scoreboard players set @a BPTSuccess 0

execute if entity @a[scores={BPTSuspiciousStew=1..}] run function bpt:stew

