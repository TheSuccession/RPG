scoreboard players set @s villagerInteract 0

execute at @e[tag=undergroundPrison, tag=doorKeeper] if entity @s[distance=..4, scores={villagerCooldown=0, dialogID=0}] run function rpg:game/dungeons/undergroundprison/npc/doorkeeper/dialog/start







scoreboard players set @s[scores={villagerCooldown=0}] villagerCooldown 10