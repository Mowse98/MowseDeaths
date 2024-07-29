# Summon Marker at Death Location
summon marker ~ ~ ~ {Tags:["md.deathMarker"]}

# Hazard Checks (doesn't run for creative/spectator mode players)
execute if entity @s[gamemode=!creative,gamemode=!spectator] run execute if score $hazard md_settings matches 1 run function md:death/death_hazards

# Tag the items to process
tag @e[type=item,nbt={Age:0s},tag=!md.deathItem,distance=..2] add md.deathItem
tag @e[type=item,nbt={Age:1s},tag=!md.deathItem,distance=..2] add md.deathItem

# Process Tagged Items
execute as @e[type=item,tag=md.deathItem] at @s run function md:death/death_items

# Remove the Death Marker
kill @e[type=marker,tag=md.deathMarker,sort=nearest,limit=1]
