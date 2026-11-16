scoreboard players operation #t swap.tmp = @s swap.idx
scoreboard players add #t swap.tmp 1
execute if score #t swap.tmp > #n swap.tmp run scoreboard players set #t swap.tmp 1

execute as @e[type=marker,tag=swap_m] if score @s swap.idx = #t swap.tmp run tag @s add swap_target
execute as @a[tag=swap_in] if score @s swap.idx = #t swap.tmp run tag @s add swap_src

tellraw @s [{"text":"🔄 Ahora estás donde estaba ","color":"gold"},{"selector":"@a[tag=swap_src,limit=1]","color":"yellow"},{"text":"!","color":"gold"}]
tp @s @e[type=marker,tag=swap_target,limit=1]

tag @e[type=marker,tag=swap_target] remove swap_target
tag @a remove swap_src
