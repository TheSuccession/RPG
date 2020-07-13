tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Reloading...","color":"green"}]
function rpg:general/scoreboards/reset
datapack disable "file/RPG"

datapack enable "file/RPG"
tellraw @a ["",{"text":"RPG","color":"yellow"},{"text":">","color":"gold"},{"text":" Reload complete","color":"green"}]