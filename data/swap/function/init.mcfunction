# Intervalo en segundos (300 = 5 minutos). Cambia este numero si queres otro tiempo.
scoreboard objectives add swap.tmp dummy
scoreboard objectives add swap.idx dummy
scoreboard players set #interval swap.tmp 300
scoreboard players operation #sec swap.tmp = #interval swap.tmp
schedule function swap:tick 20t
