scoreboard players reset @s right_click

"execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["weapon_WEAPON_NUMBER"]}}}] run execute as @s at @s run function FOLDER_NAME:game/weapons/weapon_WEAPON_NUMBER/starting_function"
