if !global.gamePause {
	if timer > 0
		{
			timer --
		}
	if timer == 0
		{
			timer2 = 15
			if global.shardsCreated < oNecromancyStaff.shardMax
				{
					instance_create_layer((spreadFactor*global.shardsCreated*dcos(oPlayer.image_angle)) + random_range(-spreadFactor,spreadFactor), (spreadFactor*global.shardsCreated*dsin(oPlayer.image_angle)) + random_range(-spreadFactor,spreadFactor), layer, oBoneShard)
				}
		}
	if timer2 == 0
		{
			instance_destroy(self)
		}
}