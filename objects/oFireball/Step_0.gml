/// @description zoom
if !global.gamePause {
	if (place_meeting(x, y, collidables) or place_meeting(x, y, enemies)) {//if it hits a collidable, start exploding
		sprite_index = sBoom2
		speed = 0
	}

	if sprite_index == sBoom2 {
		if timer > 0 { //create a timer so it doesn't explode forever
			timer -= 1
		} else {instance_destroy(self)}
	}
}
