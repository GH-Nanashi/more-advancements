scoreboard players set @s ma_cart 1
scoreboard players set @s ma_dist 0

execute store result score @s ma_sx run data get entity @s Pos[0] 10
execute store result score @s ma_sy run data get entity @s Pos[1] 10
execute store result score @s ma_sz run data get entity @s Pos[2] 10

scoreboard players operation @s ma_px = @s ma_sx
scoreboard players operation @s ma_py = @s ma_sy
scoreboard players operation @s ma_pz = @s ma_sz
