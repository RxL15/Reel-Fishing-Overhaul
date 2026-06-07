# Face the player
execute at @s facing entity @p[distance=..16,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

# Summon a marker 1 block in front of the fish
execute at @s run summon marker ^ ^ ^1 {Tags:["fishingoverhaul.dir"]}

# Read fish position
execute store result score #fx fishingoverhaul.math run data get entity @s Pos[0] 1000
execute store result score #fy fishingoverhaul.math run data get entity @s Pos[1] 1000
execute store result score #fz fishingoverhaul.math run data get entity @s Pos[2] 1000

# Read marker position
execute store result score #mx fishingoverhaul.math run data get entity @e[type=marker,tag=fishingoverhaul.dir,limit=1,sort=nearest] Pos[0] 1000
execute store result score #my fishingoverhaul.math run data get entity @e[type=marker,tag=fishingoverhaul.dir,limit=1,sort=nearest] Pos[1] 1000
execute store result score #mz fishingoverhaul.math run data get entity @e[type=marker,tag=fishingoverhaul.dir,limit=1,sort=nearest] Pos[2] 1000

# Direction = marker - fish
scoreboard players operation #mx fishingoverhaul.math -= #fx fishingoverhaul.math
scoreboard players operation #my fishingoverhaul.math -= #fy fishingoverhaul.math
scoreboard players operation #mz fishingoverhaul.math -= #fz fishingoverhaul.math

# Speed multiplier
scoreboard players set #speed fishingoverhaul.math 1
scoreboard players operation #mx fishingoverhaul.math *= #speed fishingoverhaul.math
scoreboard players operation #my fishingoverhaul.math *= #speed fishingoverhaul.math
scoreboard players operation #mz fishingoverhaul.math *= #speed fishingoverhaul.math

# Apply motion
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #mx fishingoverhaul.math
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #my fishingoverhaul.math
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #mz fishingoverhaul.math

kill @e[type=marker,tag=fishingoverhaul.dir,limit=1,sort=nearest]
tag @s remove fishingoverhaul.new
