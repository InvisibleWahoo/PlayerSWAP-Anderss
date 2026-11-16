# 1) Orden aleatorio: asigna un indice 1..n a cada jugador
scoreboard players set #n swap.tmp 0
function swap:assign

# 2) Guarda la posicion de cada uno en un marker con su indice
execute as @a[tag=swap_in] at @s run function swap:mark

# 3) Cada jugador va a la posicion del siguiente (el ultimo, a la del primero)
execute as @a[tag=swap_in] run function swap:tp_next

# 4) Limpieza
kill @e[type=marker,tag=swap_m]
tag @a remove swap_done
scoreboard players reset @a swap.idx
