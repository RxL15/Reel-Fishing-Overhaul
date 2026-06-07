tag @s add fishingoverhaul.item

execute if entity @s[nbt={Item:{id:"minecraft:cod"}}] run summon minecraft:cod ~ ~ ~ {Tags:["fishingoverhaul.new"]}
execute if entity @s[nbt={Item:{id:"minecraft:salmon"}}] run summon minecraft:salmon ~ ~ ~ {Tags:["fishingoverhaul.new"]}
execute if entity @s[nbt={Item:{id:"minecraft:tropical_fish"}}] run summon minecraft:tropical_fish ~ ~ ~ {Tags:["fishingoverhaul.new"]}
execute if entity @s[nbt={Item:{id:"minecraft:pufferfish"}}] run summon minecraft:pufferfish ~ ~ ~ {Tags:["fishingoverhaul.new"]}

execute as @e[tag=fishingoverhaul.new,distance=..1,limit=1,sort=nearest] run function fishingoverhaul:convert/launch

kill @s
