#If custom health has been set.
execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, nbt=!{AbsorptionAmount:0.0f}] as @s store result score @s maxHealth run data get entity @s AbsorptionAmount
execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, nbt=!{AbsorptionAmount:0.0f}] as @s store result score @s entityHealth run data get entity @s AbsorptionAmount

#If custom health hasn't been set.
execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, nbt={AbsorptionAmount:0.0f}] as @s store result score @s maxHealth run attribute @s minecraft:generic.max_health get
execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, nbt={AbsorptionAmount:0.0f}] as @s store result score @s entityHealth run data get entity @s Health
data modify entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, nbt={AbsorptionAmount:0.0f}] AbsorptionAmount set from entity @s Health

execute store result score @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] hasChestplate run data get entity @s ArmorItems[2]
execute if entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting, scores={hasChestplate=0}] run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone_button",Count:1b}
data modify entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] ArmorItems[2] merge value {tag: {entityName:"Placeholder"}}
setblock ~ 0 ~ birch_sign
tag @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] add settingName
data merge block ~ 0 ~ {Text1:'["",{"selector":"@e[tag=settingName]"}]'}
data modify entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] ArmorItems[2].tag.entityName set from block ~ 0 ~ Text1
tag @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] remove settingName
setblock ~ 0 ~ bedrock

data modify entity @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] CustomNameVisible set value 1
tag @s[tag=!noHealth, type=!item, type=!item_frame, type=!end_crystal, type=!player, type=!villager, type=!armor_stand, type=!painting] add appliedHealth

function rpg:game/health/update