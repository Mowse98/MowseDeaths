# Tag the items for particles
tag @s add md.deathItemParticle

# Apply Data to Items
data merge entity @s {Age:-18000s}
data merge entity @s {Glowing:1}
data merge entity @s {Motion:[0d,0d,0d]}

# Group all the Items
tp @s @e[type=marker,tag=md.deathMarker,sort=nearest,limit=1]

# Remove the proccessing tag
tag @s remove md.deathItem