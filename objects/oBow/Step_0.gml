/// @description bow weapon template
if !global.gamePause {
	event_inherited()
	if image_index > image_number - 1 { //if animation ended, go back to normal bow animation
		image_speed = 0
		image_index = 0
		if shoot = 0 {
			instance_create_depth(x, y, layer, oArrow) //If you still have shots left, shoot a shot
			shoot = 1
			oPlayer.arrows --
		}
	}
	if mouse_check_button(mb_left) { //if left mouse button pressed, play firing animation
		image_speed = 1
		shoot = 0
	}
}
