damage @p[distance=..2] 1 minecraft:falling_anvil by @s

execute if entity @s[tag=hit_player] run fill ~1 ~-1.5 ~-1 ~-1 ~1 ~1 air replace snow_block
execute if entity @s[tag=hit_player] run fill ~ ~-1.5 ~-2 ~ ~1 ~2 air replace snow_block
execute if entity @s[tag=hit_player] run fill ~-2 ~-1.5 ~ ~2 ~1 ~ air replace snow_block

execute if entity @s[tag=!hit_player] run fill ~1 ~ ~-1 ~-1 ~ ~1 air replace snow_block
execute if entity @s[tag=!hit_player] run fill ~ ~ ~-2 ~ ~ ~2 air replace snow_block
execute if entity @s[tag=!hit_player] run fill ~-2 ~ ~ ~2 ~ ~ air replace snow_block

execute if entity @s[tag=hit] run particle minecraft:explosion ~ ~ ~ 2 0 2 1 10
execute if entity @s[tag=hit] run execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2 1
particle minecraft:flash ~ ~1.4 ~ 2 2 2 0 4 force @a
execute if entity @s[tag=hit] run particle minecraft:block white_concrete ~ ~1 ~ 2.5 1 2.5 0 40 force @a
