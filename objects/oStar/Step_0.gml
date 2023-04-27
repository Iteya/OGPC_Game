if !global.gamePause {
	xA = x //first set of coordinates
	yA = y
	if distance_to_point(myX,myY) < 800 {
		move_contact_solid(direction, Speed) //movement code
	} else {
		image_speed = 0 //if the distance is too far, then stop moving and stop the animation
	}
	xB = x
	yB = y //second set of coordinates
	if xA == xB and yA == yB {
		instance_destroy(self) //if not moving anymore, be destroyed
	}
	image_angle += (image_index + 1) * 6 //spin faster the more powerful it is
}