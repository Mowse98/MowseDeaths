# Tag the items for particles
tag @s add md.deathItemLinger

# Apply Data to Items
data merge entity @s {Motion:[0d,0d,0d]}
execute if score $glowing md_settings matches 1 run data merge entity @s {Glowing:1}
execute if score $despawn md_settings matches 1.. run data merge entity @s {Age:-18000s}
execute if score $invulnerable md_settings matches 1 run data merge entity @s {Invulnerable:1b}

# Group all the Items
tp @s @e[type=marker,tag=md.deathMarker,sort=nearest,limit=1]

# Remove the proccessing tag
tag @s remove md.deathItem