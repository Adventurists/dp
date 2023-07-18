# Range of projectile being shot
scoreboard players set @s movement_projectile 40

# Recursive function for movement
execute at @s run function FOLDER_NAME:game/weapons/weapon_WEAPON_NUMBER/movement

# If hit player or block
execute as @s at @s run function FOLDER_NAME:game/weapons/weapon_WEAPON_NUMBER/effect

# Kill the area cloud
kill @s
