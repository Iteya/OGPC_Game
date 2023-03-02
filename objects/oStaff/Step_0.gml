/// @description staff weapon template
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) //change where it rotates **MAKE SURE TO PUT THE ORIGIN OF THE STAFF TO WHERE IT WILL ROTATE!!**
x = oPlayer.x //set the x
y = oPlayer.y //set the y

if image_index > image_number - 1 { //if animation ended, go back to normal staff animation
	sprite_index = sMagicStaff
	if shoot = 0 and oPlayer.arrows > 0 {
		instance_create_depth(x, y, layer, oFireball) //If you still have shots left, shoot a shot
		shoot = 1
		oPlayer.arrows --
	}
if mouse_check_button(mb_left) { //if left mouse button pressed, play firing animation
	sprite_index = sMagicStaff
	shoot = 0
}
}
