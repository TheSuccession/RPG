tellraw @s ["",{"text":"Door Keeper","color":"yellow"},{"text":">","color":"gold"},{"text":" Fine, I'll open the door for you.","color":"green"}]
clear @s minecraft:tripwire_hook{dungeon:0} 1
scoreboard players set @s inDungeon 1
schedule function rpg:game/dungeons/undergroundprison/animation/door/open 0.75s