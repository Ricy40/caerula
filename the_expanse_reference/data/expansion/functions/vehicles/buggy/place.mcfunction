function expansion:handy_tools/raycast/cast
execute as @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,Tags:["moon_buggy"],Passengers:[{id:"minecraft:pig",Silent:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Saddle:1b,Tags:["buggy_pig"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999999,ShowParticles:0b},{Id:11b,Amplifier:5b,Duration:99999999,ShowParticles:0b}]}]}
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] run item replace entity @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] store result score @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] fuel_level run data get entity @s SelectedItem.tag.fuel_lvl
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] if entity @e[type=minecraft:armor_stand,nbt={Tags:["moon_buggy"]},distance=..1] run item replace entity @s weapon.mainhand with minecraft:air
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] run scoreboard players set @s fuel_max 129
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] as @e[type=armor_stand,tag=moon_buggy,limit=1,sort=nearest] run scoreboard players set @s exp_timer_1 1012007
execute as @e[tag=expansion_ray,limit=1,sort=nearest] run kill @s