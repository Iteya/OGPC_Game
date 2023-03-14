/// @description zoom
if (place_meeting(x, y, collidables) or place_meeting(x, y, enemies)) //if it hits a collidable, start exploding
	{
		sprite_index = sBoom2
		speed = 0
		if timer > 0 //create a timer so it doesn't explode forever
			{
				timer -= 1
			} else if (timer <= 0) {instance_destroy(self)}
	}


