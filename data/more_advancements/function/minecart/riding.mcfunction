execute unless score @s ma_cart matches 1 run function more_advancements:minecart/start

execute store result score @s ma_x run data get entity @s Pos[0] 100
execute store result score @s ma_y run data get entity @s Pos[1] 100
execute store result score @s ma_z run data get entity @s Pos[2] 100

scoreboard players operation @s ma_dx = @s ma_x
scoreboard players operation @s ma_dx -= @s ma_px
execute if score @s ma_dx matches ..-1 run scoreboard players operation @s ma_dx *= #neg ma_math

scoreboard players operation @s ma_dy = @s ma_y
scoreboard players operation @s ma_dy -= @s ma_py
execute if score @s ma_dy matches ..-1 run scoreboard players operation @s ma_dy *= #neg ma_math

scoreboard players operation @s ma_dz = @s ma_z
scoreboard players operation @s ma_dz -= @s ma_pz
execute if score @s ma_dz matches ..-1 run scoreboard players operation @s ma_dz *= #neg ma_math

scoreboard players operation @s ma_dist += @s ma_dx
scoreboard players operation @s ma_dist += @s ma_dy
scoreboard players operation @s ma_dist += @s ma_dz

scoreboard players operation @s ma_px = @s ma_x
scoreboard players operation @s ma_py = @s ma_y
scoreboard players operation @s ma_pz = @s ma_z

execute if score @s ma_dist matches 100000.. if entity @s[tag=!ride1000_done] run function more_advancements:complete_minecart
