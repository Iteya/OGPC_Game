if oLightningStaff.boltsMade < 20 and timer < 14
	{
		instance_create_layer(x + lengthdir_x(len, image_angle), y + lengthdir_y(len, image_angle), "Foreground", oLightningBolt)
		if fork
			{
				instance_create_layer(x + lengthdir_x(len, image_angle), y + lengthdir_y(len, image_angle), "Foreground", oLightningBolt)
			}
	
	}
timer --
if timer < 0
	{
		instance_destroy(self)
	}