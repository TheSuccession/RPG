effect give @e[tag=stationary] minecraft:slowness 10 255 true
execute as @e unless entity @s[team=collisionRule] run team join collisionRule @s
execute as @e[tag=untradeable] run data modify entity @s Offers set value {}

#Dungeon Ticks
execute if entity @a[scores={inDungeon=1}] run function rpg:game/dungeons/undergroundprison/tick

execute as @e[tag=doorKeeper] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1, distance=..5]
execute as @a unless entity @s[scores={dialogID=0..}] run scoreboard players set @s villagerCooldown 0
execute as @a unless entity @s[scores={dialogID=0..}] run scoreboard players set @s inDungeon 0
execute as @a unless entity @s[scores={dialogID=0..}] run scoreboard players set @s dialogID 0
execute as @a[scores={villagerInteract=1..}] if entity @s run function rpg:game/rightclick
scoreboard players remove @a[scores={villagerCooldown=1..}] villagerCooldown 1
scoreboard players add @a[scores={dialogID=1..}] dialogTimer 1
execute as @a[scores={dialogID=1..,dialogTimer=50..}] if entity @s run function rpg:game/dialogcontroller
execute as @a[scores={damage=1..}] run function rpg:game/damage
function rpg:game/item/tick
function rpg:game/health/tick