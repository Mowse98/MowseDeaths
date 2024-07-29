# Loops
execute if score $5t md_main matches 5.. run scoreboard players set $5t md_main 0
scoreboard players add $5t md_main 1
execute if score $1200t md_main matches 1200.. run scoreboard players set $1200t md_main 0
scoreboard players add $1200t md_main 1



# Check for player death
execute as @a[scores={md_deathCheck=1}] at @s run function md:death/death_trigger
scoreboard players set @a md_deathCheck 0

# Run particles on death piles
execute if score $5t md_main matches 1 run execute if score $particles md_settings matches 1 run execute as @e[tag=md.deathItemLinger,limit=1,sort=random] at @s run particle minecraft:soul ~ ~0.7 ~ 0.2 0.2 0.2 0 1 force

# Extend despawn time if Eternal setting is enabled
execute if score $1200t md_main matches 1 run execute if score $despawn md_settings matches 2 run execute as @e[type=item,tag=md.deathItemLinger] at @s run data merge entity @s {Age:-18000s}