execute if score #reload delay matches 18 positioned 0 128 0 run forceload remove ~ ~
execute if score #reload delay matches 17 positioned -621 128 126 run forceload remove ~ ~
execute if score #reload delay matches 16 positioned -1882 128 -1334 run forceload remove ~ ~
execute if score #reload delay matches 15 positioned 1358 128 1741 run forceload remove ~ ~
#execute if score #reload delay matches 14 positioned 2448 128 -1605 run forceload remove ~ ~
execute if score #reload delay matches 13 positioned -2873 128 1536 run forceload remove ~ ~
execute if score #reload delay matches 12 positioned -3557 128 1635 run forceload remove ~ ~

execute if score #reload delay matches 10 if score #earth gen_success matches 1 if score #moon gen_success matches 1 if score #mars gen_success matches 1 if score #venus gen_success matches 1 if score #jupiter gen_success matches 1 if score #europa gen_success matches 1 run scoreboard players set #total_system gen_success 1
execute if score #reload delay matches 10 if score #total_system gen_success matches 0 run function expansion:destinations/space/start_generation
