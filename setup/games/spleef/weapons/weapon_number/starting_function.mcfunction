clear @s minecraft:carrot_on_a_stick{Tags:["weapon_WEAPON_NUMBER"]} 1

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["weapon_WEAPON_NUMBER"]}
execute anchored eyes rotated as @s run tp @e[tag=weapon_WEAPON_NUMBER,limit=1,sort=nearest] ^ ^ ^2 ~ ~
execute as @e[tag=weapon_WEAPON_NUMBER,limit=1,sort=nearest] run function FOLDER_NAME:game/weapons/weapon_WEAPON_NUMBER/shoot
