event_inherited()
if mode == "attack"
	{
		if image_angle > 180
			{
				sprite_index = sMothUp
				image_angle -= 180
			}
		else
			{
				sprite_index = sMothDown
			}
		image_angle -= 90
	}