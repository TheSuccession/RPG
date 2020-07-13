function rpg:general/scoreboards/create




#Welcome Message

execute unless entity @a[scores={installMessage=1}] run tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Thank you for installing RPG!","color":"green"}]
scoreboard players set @a installMessage 1