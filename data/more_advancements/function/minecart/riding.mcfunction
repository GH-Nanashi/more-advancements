execute unless score @s ma_cart matches 1 run function more_advancements:minecart/start

execute store result score @s ma_x run data get entity @s Pos[0] 10
execute store result score @s ma_y run data get entity @s Pos[1] 10
execute store result score @s ma_z run data get entity @s Pos[2] 10

scoreboard players operation @s ma_dx = @s ma_x
scoreboard players operation @s ma_dx -= @s ma_sx
execute if score @s ma_dx matches ..-1 run scoreboard players operation @s ma_dx *= #neg ma_math

scoreboard players operation @s ma_dy = @s ma_y
scoreboard players operation @s ma_dy -= @s ma_sy
execute if score @s ma_dy matches ..-1 run scoreboard players operation @s ma_dy *= #neg ma_math

scoreboard players operation @s ma_dz = @s ma_z
scoreboard players operation @s ma_dz -= @s ma_sz
execute if score @s ma_dz matches ..-1 run scoreboard players operation @s ma_dz *= #neg ma_math

execute unless entity @s[tag=ride1000_done] if score @s ma_dx matches 10000.. run function more_advancements:complete_minecart
execute unless entity @s[tag=ride1000_done] if score @s ma_dy matches 10000.. run function more_advancements:complete_minecart
execute unless entity @s[tag=ride1000_done] if score @s ma_dz matches 10000.. run function more_advancements:complete_minecart

execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dx *= @s ma_dx
execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dy *= @s ma_dy
execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dz *= @s ma_dz

execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dist = @s ma_dx
execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dist += @s ma_dy
execute unless entity @s[tag=ride1000_done] run scoreboard players operation @s ma_dist += @s ma_dz

execute unless entity @s[tag=ride1000_done] if score @s ma_dist matches 100000000.. run function more_advancements:complete_minecart
