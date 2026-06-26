scoreboard objectives add ma_cart dummy
scoreboard objectives add ma_x dummy
scoreboard objectives add ma_y dummy
scoreboard objectives add ma_z dummy
scoreboard objectives add ma_px dummy
scoreboard objectives add ma_py dummy
scoreboard objectives add ma_pz dummy
scoreboard objectives add ma_sx dummy
scoreboard objectives add ma_sy dummy
scoreboard objectives add ma_sz dummy
scoreboard objectives add ma_dx dummy
scoreboard objectives add ma_dy dummy
scoreboard objectives add ma_dz dummy
scoreboard objectives add ma_dist dummy
scoreboard objectives add ma_math dummy

scoreboard players set #neg ma_math -1
execute as @a[advancements={classic_plus:on_a_rail=true}] run tag @s add ride1000_done
