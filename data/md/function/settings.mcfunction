# Configure some things about how items are handled. Change the numbers in the lines that don't start with a '#'

# Do we attempt to be protect dropped items from hazards? i.e. extinguish fire, place blocks above air and lava, etc.
# 0 = No, 1 = Yes
scoreboard players set $hazard md_settings 1


# Do dropped items glow?
# 0 = No, 1 = Yes
scoreboard players set $glowing md_settings 1


# How long do dropped items take to despawn?
# 0 = Vanilla (5 minutes), 1 = Extended (20 minutes), 2 = Eternal (Do not despawn)
scoreboard players set $despawn md_settings 1


# Are dropped items invulnerable?
# 0 = No, 1 = Yes
scoreboard players set $invulnerable md_settings 0


# Do dropped items emit soul particles?
# 0 = No, 1 = Yes
scoreboard players set $particles md_settings 1
