/// @description zoom'n'boom
if !place_meeting(x, y, collidables) {
	move_contact_solid(direction, 10)
} else {
	sprite_index = sBoom2
	if timer > 0 {
		timer -= 1
	} else if timer <= 0 {
		instance_destroy(self)
	}
}

