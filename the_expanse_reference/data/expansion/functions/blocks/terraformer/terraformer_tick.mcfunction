execute as @e[type=armor_stand,tag=shield_generator,limit=1,sort=nearest] at @s run function expansion:blocks/terraformer/shield_generator
execute unless block ~ ~ ~ minecraft:spawner run function expansion:blocks/terraformer/destroy
