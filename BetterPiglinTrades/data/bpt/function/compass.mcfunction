execute as @a[nbt={equipment:{offhand:{id:"minecraft:recovery_compass"}}}] at @s store result score @s BPTStructureFinder run locate structure ancient_city
execute as @a[nbt={equipment:{offhand:{id:"minecraft:recovery_compass"}}}] run title @s[nbt={equipment:{offhand:{id:"minecraft:recovery_compass"}}}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] at @s store result score @s BPTStructureFinder run locate structure ancient_city
execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] run title @s[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:overworld"}] at @s store result score @s BPTStructureFinder run locate structure #ruined_portal
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:overworld"}] run title @s[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:overworld"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:overworld"}] at @s store result score @s BPTStructureFinder run locate structure #ruined_portal
execute as @a[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:overworld"}] run title @s[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:overworld"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:the_nether"}] at @s store result score @s BPTStructureFinder run locate structure bastion_remnant
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:the_nether"}] run title @s[nbt={SelectedItem:{id:"minecraft:clock"},Dimension:"minecraft:the_nether"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:the_nether"}] at @s store result score @s BPTStructureFinder run locate biome soul_sand_valley
execute as @a[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:the_nether"}] run title @s[nbt={equipment:{offhand:{id:"minecraft:clock"}},Dimension:"minecraft:the_nether"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:overworld"}] at @s store result score @s BPTStructureFinder run locate structure #village
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:overworld"}] run title @s[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:overworld"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:overworld"}] at @s store result score @s BPTStructureFinder run locate structure #village
execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:overworld"}] run title @s[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:overworld"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_nether"}] at @s store result score @s BPTStructureFinder run locate structure fortress
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_nether"}] run title @s[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_nether"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_nether"}] at @s store result score @s BPTStructureFinder run locate biome warped_forest
execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_nether"}] run title @s[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_nether"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_end"}] at @s store result score @s BPTStructureFinder run locate structure end_city
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_end"}] run title @s[nbt={SelectedItem:{id:"minecraft:compass"},Dimension:"minecraft:the_end"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_end"}] at @s store result score @s BPTStructureFinder run locate structure end_city
execute as @a[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_end"}] run title @s[nbt={equipment:{offhand:{id:"minecraft:compass"}},Dimension:"minecraft:the_end"}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] at @s store result score @s BPTStructureFinder run locate structure stronghold
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run title @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:ender_eye"}}}] at @s store result score @s BPTStructureFinder run locate structure stronghold
execute as @a[nbt={equipment:{offhand:{id:"minecraft:ender_eye"}}}] run title @s[nbt={equipment:{offhand:{id:"minecraft:ender_eye"}}}] actionbar [{"score":{"name":"@s","objective":"BPTStructureFinder"}}]

execute as @a[nbt={equipment:{offhand:{id:"minecraft:nautilus_shell"}}}] run team join Drowned @p
execute as @a[nbt={equipment:{offhand:{id:"minecraft:nautilus_shell"}}}] run team join Drowned @e[type=drowned]

execute as @a[nbt={SelectedItem:{id:"minecraft:nautilus_shell"}}] run team join Drowned @e[type=drowned]
execute as @a[nbt={SelectedItem:{id:"minecraft:nautilus_shell"}}] run team join Drowned @p

execute as @a[nbt=!{SelectedItem:{id:"minecraft:nautilus_shell"}},nbt=!{equipment:{offhand:{id:"minecraft:nautilus_shell"}}}] run team leave @p[team=Drowned]

effect give @a[nbt={equipment:{offhand:{id:"minecraft:heart_of_the_sea"}}}] conduit_power 3600 0 true
execute at @a[nbt={equipment:{offhand:{id:"minecraft:heart_of_the_sea"}}}] run playsound block.beacon.activate player @a ~ ~1 ~ 1 1 1
execute as @a[nbt={equipment:{offhand:{id:"minecraft:heart_of_the_sea"}}}] run item replace entity @s weapon.offhand with air

execute at @a[nbt={equipment:{offhand:{id:"minecraft:amethyst_shard"}}}] run summon experience_orb ~ ~ ~ {Value:5}
execute at @a[nbt={equipment:{offhand:{id:"minecraft:amethyst_shard"}}}] run playsound block.amethyst_cluster.break block @a ~ ~1 ~ 1 1 1
execute as @a[nbt={equipment:{offhand:{id:"minecraft:amethyst_shard"}}}] run item replace entity @s weapon.offhand with air

execute as @a[nbt={equipment:{offhand:{id:"minecraft:book"}}}] run experience add @s 100 points
execute at @a[nbt={equipment:{offhand:{id:"minecraft:book"}}}] run playsound item.armor.equip_leather player @a ~ ~1 ~ 1 1 1
execute as @a[nbt={equipment:{offhand:{id:"minecraft:book"}}}] run item replace entity @s weapon.offhand with air

effect give @a[nbt={equipment:{offhand:{id:"minecraft:conduit"}}}] conduit_power 2 0 true
effect give @a[nbt={SelectedItem:{id:"minecraft:conduit"}}] conduit_power 2 0 true

tag @a remove compassusing
tag @a[nbt={equipment:{offhand:{id:"minecraft:ender_eye"}}}] add compassusing
tag @a[nbt={equipment:{offhand:{id:"minecraft:compass"}}}] add compassusing
tag @a[nbt={equipment:{offhand:{id:"minecraft:clock"}}}] add compassusing
tag @a[nbt={equipment:{offhand:{id:"minecraft:recovery_compass"}}}] add compassusing
tag @a[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] add compassusing
tag @a[nbt={SelectedItem:{id:"minecraft:compass"}}] add compassusing
tag @a[nbt={SelectedItem:{id:"minecraft:clock"}}] add compassusing
tag @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] add compassusing

execute if entity @a[tag=!compassusing] run function bpt:tree/2
