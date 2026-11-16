schedule function swap:tick 20t
scoreboard players remove #sec swap.tmp 1
execute if score #sec swap.tmp matches 1..10 run title @a actionbar [{"text":"Rotación en ","color":"yellow"},{"score":{"name":"#sec","objective":"swap.tmp"},"color":"red"},{"text":"s","color":"yellow"}]
execute if score #sec swap.tmp matches ..0 run function swap:do_swap
execute if score #sec swap.tmp matches ..0 run scoreboard players operation #sec swap.tmp = #interval swap.tmp
