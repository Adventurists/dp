# Move forward
tp @s ^ ^ ^0.5

# Particle
particle minecraft:block white_wool ~ ~ ~ 0.2 0 0.2 0.1 10 force @a

# Check for collision
execute as @s at @s if entity @e[type=player,distance=..2,limit=1,sort=nearest] run tag @s add hit_player
execute as @s at @s unless block ~ ~ ~ minecraft:air run tag @s add hit
tag @s[tag=hit_player] add hit

# Subtract score
scoreboard players remove @s movement_projectile 1

# Recursive if it's still in the air or hasn't hit a player
execute as @e[tag=!hit,scores={movement_projectile=1..}] at @s run function FOLDER_NAME:game/weapons/weapon_WEAPON_NUMBER/movement
