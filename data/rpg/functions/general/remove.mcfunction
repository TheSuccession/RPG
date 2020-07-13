tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Removing datapack...","color":"green"}]
function rpg:general/scoreboards/reset
scoreboard objectives remove installMessage
schedule function rpg:general/finishremove 7t