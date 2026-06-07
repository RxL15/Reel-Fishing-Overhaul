clear @a *[custom_data={fishingoverhaul:true}]

execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fishingoverhaul:true}}}}] at @s run function fishingoverhaul:convert/process
