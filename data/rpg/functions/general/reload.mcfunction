tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Reloading...","color":"green"}]
function rpg:general/scoreboards/reset
datapack disable "file/RPG-master"

datapack enable "file/RPG-master"
tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Reload complete","color":"green"}]