# 5 tick loop
execute if score $5t md_main matches 5.. run scoreboard players set $5t md_main 0
scoreboard players add $5t md_main 1

# Check for player death
execute as @a[scores={md_deathCheck=1}] at @s run function md:death/death_trigger
scoreboard players set @a md_deathCheck 0

# Run particles on death piles
execute if score $5t md_main matches 1 run execute as @e[tag=md.deathItemParticle,limit=1,sort=random] at @s run particle minecraft:soul ~ ~0.7 ~ 0.2 0.2 0.2 0 1 force