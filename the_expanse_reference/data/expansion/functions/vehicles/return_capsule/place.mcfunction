function expansion:handy_tools/raycast/cast
execute as @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ^ ^ ^ {Marker:0b,Invisible:1b,Tags:["return_capsule"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:1012007,return_capsule:1b}}]}
execute at @e[tag=expansion_ray,distance=..5,limit=1,sort=nearest] align xyz positioned ~.5 ~ ~.5 if entity @e[type=minecraft:armor_stand,nbt={Tags:["return_capsule"]},distance=..1] run clear @s carrot_on_a_stick{return_capsule:1b} 1
execute as @e[tag=expansion_ray,limit=1,sort=nearest] run kill @s