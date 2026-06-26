execute as @a[advancements={classic_plus:on_a_rail=true}] run tag @s add ride1000_done
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run function more_advancements:minecart/riding
execute as @a[scores={ma_cart=1},nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run function more_advancements:minecart/reset
