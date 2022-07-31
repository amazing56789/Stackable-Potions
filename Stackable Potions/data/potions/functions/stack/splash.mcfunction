#@type: runner
#@in: potions:tests/potion_items

scoreboard players set @s potions.count 0

data modify storage potions:equals effects set from entity @s Item.tag.CustomPotionEffects

execute as @e[ type = minecraft:item, distance = ..1.5, nbt = { Item : { id : "minecraft:splash_potion" } } ] run function potions:stack/same_potion

execute store result score @s Item.Count run scoreboard players get entity @s potions.count