if !global.gamePause {
timer --
if timer < 0 {
	timer = 7
	if !moved {
		moved = true
		playerDirection = point_direction(x, y, oPlayer.x, oPlayer.y)
		if (playerDirection < 45 or playerDirection >= 315) and image_angle != 180 { //East
			global.bossDirection = 0
			instance_create_layer(x + 64 * image_xscale, y, "Midground", oBoss1)
			if image_angle == 0 {
				image_index = 1
				image_angle = 90
			}
			else if image_angle == 90 {
				image_index = 2
			}
			else {
				image_index = 2
				image_angle = 180
			}
			
		}
		else if playerDirection >= 45 and playerDirection < 135 and image_angle != 270 { //North
			global.bossDirection = 90
			instance_create_layer(x, y - 64 * image_xscale, "Midground", oBoss1)
			if image_angle == 0 {
				image_index = 2
				image_yscale = -image_yscale
			}
			else if image_angle == 90 {
				image_index = 1
				image_angle = 0
			}
			else {
				image_index = 2
				image_angle = 180
			}
		}
		else if playerDirection < 225 and image_angle != 0 { //West
			global.bossDirection = 180
			instance_create_layer(x - 64 * image_xscale, y, "Midground", oBoss1)
			if image_angle == 90 {
				image_index = 2
				image_angle = 0
			}
			else if image_angle == 180 {
				image_index = 1
				image_angle = 90
			}
			else {
				image_index = 2
			}
		}
		else if image_angle != 90 { //South
			global.bossDirection = 270
			instance_create_layer(x , y + 64 * image_xscale, "Midground", oBoss1)
			if image_angle == 0 {
				image_index = 2
			}
			else if image_angle == 180 {
				image_index = 2
				image_yscale = -image_yscale
			}
			else {
				image_index = 1
			}
		}
		else {
			moved = false
		}
	}
	length ++
	if length == 10 {
		image_index = 3
	}
	else if length > 10 {
		instance_destroy(self)
	}
}




}