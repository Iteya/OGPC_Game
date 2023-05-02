bolt = irandom_range(1,3)
fork = false
if bolt == 1
	{
		sprite_index = sLightningBolt1
	}
else if bolt == 2
	{
		sprite_index = sLightningBolt2
	}
else
	{
		sprite_index = sLightningBolt3
		fork = true
	}
image_angle = boltAngle
boltAngle += random_range(-10, 10)
//instance_create_layer(x + lengthdir_x()