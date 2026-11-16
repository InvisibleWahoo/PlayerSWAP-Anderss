scoreboard players add #n swap.tmp 1
tag @r[tag=swap_in,tag=!swap_done] add swap_cur
scoreboard players operation @a[tag=swap_cur] swap.idx = #n swap.tmp
tag @a[tag=swap_cur] add swap_done
tag @a[tag=swap_cur] remove swap_cur
execute if entity @a[tag=swap_in,tag=!swap_done] run function swap:assign
