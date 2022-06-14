execute at @s unless entity @e[type=armor_stand,tag=terraformer,distance=..40,limit=1,sort=nearest] run scoreboard players remove @s[scores={oxygen_level=1..},predicate=expansion:nbt_checks/armor/space_equipment/equipment] oxygen_level 1
execute as @s[scores={oxygen_level=1..}] run function expansion:global/oxygen_regulation/oxygen_percentage

execute as @s[scores={oxygen_percent=50..},predicate=expansion:nbt_checks/armor/space_equipment/equipment] run title @s actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"green"},{"score":{"name":"@s","objective":"oxygen_percent"},"color":"green"},{"text":"%\u25b6","color":"green"}]
execute as @s[scores={oxygen_percent=10..50},predicate=expansion:nbt_checks/armor/space_equipment/equipment] run title @s actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"gold"},{"score":{"name":"@s","objective":"oxygen_percent"},"color":"gold"},{"text":"%\u25b6","color":"gold"}]
execute as @s[scores={oxygen_percent=..10},predicate=expansion:nbt_checks/armor/space_equipment/equipment] run title @s actionbar ["",{"text":"Oxygen Level: "},{"text":"\u25c0","color":"dark_red"},{"score":{"name":"@s","objective":"oxygen_percent"},"color":"dark_red"},{"text":"%\u25b6","color":"dark_red"}]

execute at @s unless entity @e[type=armor_stand,tag=terraformer,distance=..40,limit=1,sort=nearest] unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:global/oxygen_regulation/suffocate
execute at @s unless entity @e[type=armor_stand,tag=terraformer,distance=..40,limit=1,sort=nearest] unless score @s oxygen_level matches 1.. run function expansion:global/oxygen_regulation/suffocate

