execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] as @s store result score @s entityHealth run data get entity @s AbsorptionAmount
setblock ~ 0 ~ birch_sign
tag @s add updatingHealth
data merge block ~ 0 ~ {Text1:'["",{"nbt":"ArmorItems[2].tag.entityName","entity":"@e[tag=updatingHealth]","color":"#64B5F6","interpret":true}, {"text":" [","color":"#1E88E5"},{"score":{"name":"@e[tag=updatingHealth]","objective":"entityHealth"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@e[tag=updatingHealth]","objective":"maxHealth"},"color":"gold"},{"text":"]","color":"#1E88E5"}]'}
data modify entity @s CustomName set from block ~ 0 ~ Text1
data merge entity @s {Health:0.1f,Attributes:[{Name:generic.max_health,Base:0}]}
data merge entity @s {ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]}
tag @s remove updatingHealth
setblock ~ 0 ~ bedrock
