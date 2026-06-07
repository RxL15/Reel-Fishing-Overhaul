# Reel-in velocity from the caught fish
execute store result score #mx fishingoverhaul.math run data get storage fishingoverhaul:temp motion[0] 10000
execute store result score #my fishingoverhaul.math run data get storage fishingoverhaul:temp motion[1] 10000
execute store result score #mz fishingoverhaul.math run data get storage fishingoverhaul:temp motion[2] 10000

execute store result entity @s Motion[0] double 0.00016 run scoreboard players get #mx fishingoverhaul.math
execute store result entity @s Motion[1] double 0.000175 run scoreboard players get #my fishingoverhaul.math
execute store result entity @s Motion[2] double 0.00016 run scoreboard players get #mz fishingoverhaul.math

tag @s remove fishingoverhaul.new
