#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp_x=0..,exp_z=0..}] in expansion:space run tp @s -1762 512 -1214 -45 0
execute if entity @s[scores={exp_x=0..,exp_z=..0}] in expansion:space run tp @s -1762 512 -1454 -135 0
execute if entity @s[scores={exp_x=..0,exp_z=0..}] in expansion:space run tp @s -2002 512 -1214 45 0
execute if entity @s[scores={exp_x=..0,exp_z=..0}] in expansion:space run tp @s -2002 512 -1454 135 0

