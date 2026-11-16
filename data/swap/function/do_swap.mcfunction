tag @a remove swap_in
tag @a[gamemode=!spectator] add swap_in
execute store result score #c swap.tmp if entity @a[tag=swap_in]
execute if score #c swap.tmp matches 2.. run function swap:rotate
execute if score #c swap.tmp matches ..1 run tellraw @a {"text":"No hay suficientes jugadores para rotar.","color":"red"}
tag @a remove swap_in
