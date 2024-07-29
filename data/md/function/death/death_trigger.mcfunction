# Summon Marker at Death Location
summon marker ~ ~ ~ {Tags:["md.deathMarker"]}

# Hazard Checks
execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ glass
execute if block ~ ~-1 ~ cactus run setblock ~ ~-1 ~ glass
execute if block ~ ~-1 ~ lava run setblock ~ ~-1 ~ glass
execute if block ~ ~-1 ~ fire run setblock ~ ~-1 ~ air
execute if block ~ ~ ~ fire run setblock ~ ~ ~ air

# Tag the items to process
tag @e[type=item,nbt={Age:0s},tag=!md.deathItem,distance=..2] add md.deathItem
tag @e[type=item,nbt={Age:1s},tag=!md.deathItem,distance=..2] add md.deathItem

# Process Tagged Items
execute as @e[type=item,tag=md.deathItem] at @s run function md:death/death_items

# Remove the Death Marker
kill @e[type=marker,tag=md.deathMarker,sort=nearest,limit=1]
