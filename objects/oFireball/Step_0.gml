/// @description zoom'n'boom




if (place_meeting(x, y, collidables))
	{
		exploding = 4
		speed = 0
		sprite_index = sBoom2
	}


if (exploding >= 0)
	{
		exploding --
	}
else if (exploding < 0) 
	{
		instance_destroy(self)
	}