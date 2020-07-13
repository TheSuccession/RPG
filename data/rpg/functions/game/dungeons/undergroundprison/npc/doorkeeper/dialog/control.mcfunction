tellraw @s {"text":""}
execute if entity @s[scores={dialogLine=2}] run function rpg:game/dungeons/undergroundprison/npc/doorkeeper/dialog/denyentry/nokey/line2
execute if entity @s[scores={dialogLine=1}] run function rpg:game/dungeons/undergroundprison/npc/doorkeeper/dialog/denyentry/nokey/player1