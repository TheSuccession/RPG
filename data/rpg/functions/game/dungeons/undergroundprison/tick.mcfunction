execute at @e[tag=doorKeeper, tag=undergroundPrison] unless entity @a[scores={inDungeon=1}, distance=..7] if block 557 5 74 air run function rpg:game/dungeons/undergroundprison/animation/door/close
execute as @a[scores={inDungeon=1}] at @s if block ~ ~-3 ~ minecraft:dropper[facing=up] run effect give @s minecraft:levitation 1 3 true
execute as @a[x=553,y=4,z=71,dx=2,dy=3,dz=3,scores={inDungeon=0}] at @s run function rpg:game/dungeons/undergroundprison/npc/doorkeeper/dialog/denyentry/noticket/line0