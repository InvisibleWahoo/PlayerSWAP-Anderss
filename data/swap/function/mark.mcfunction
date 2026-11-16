summon marker ~ ~ ~ {Tags:["swap_m","swap_new"]}
scoreboard players operation @e[type=marker,tag=swap_new,limit=1] swap.idx = @s swap.idx
tag @e[type=marker,tag=swap_new] remove swap_new
