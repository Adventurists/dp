tag @s add spectator

execute unless score #ingame_left count_players matches 1 run gamemode spectator @s
execute unless score #ingame_left count_players matches 1 run tp @s @p[tag=ingame]